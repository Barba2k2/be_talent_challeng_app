import '../../../core/rest_client/rest_client.dart';
import '../../../core/rest_client/rest_client_exception.dart';
import '../../../models/employee.dart';

class EmployeesRepository {
  final RestClient _restClient;
  static const String _endpoint = '/employees';

  EmployeesRepository(this._restClient);

  Future<List<Employee>> getEmployees() async {
    try {
      final response = await _restClient.get<List>(_endpoint);

      if (response.data == null) {
        return [];
      }

      return response.data!
          .cast<Map<String, dynamic>>()
          .map((json) => Employee.fromJson(json))
          .toList();
    } on RestClientException catch (e) {
      if (e.statusCode == 404) {
        throw Exception('Nenhum funcionário encontrado');
      }
      throw Exception('Erro ao carregar funcionários: ${e.message}');
    } catch (e) {
      throw Exception('Erro ao carregar funcionários: $e');
    }
  }
}
