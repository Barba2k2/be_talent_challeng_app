import 'package:be_talent_challeng_app/src/core/rest_client/rest_client_response.dart';
import 'package:be_talent_challeng_app/src/features/employees/repository/employees_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:be_talent_challeng_app/src/core/rest_client/rest_client.dart';

class MockRestClient extends Mock implements RestClient {}

void main() {
  late EmployeesRepository repository;
  late RestClient restClient;

  setUp(() {
    restClient = MockRestClient();
    repository = EmployeesRepository(restClient);
  });

  final mockData = [
    {
      'id': '1',
      'name': 'João',
      'job': 'Back-end',
      'admission_date': '2019-12-02T00:00:000Z',
      'phone': '5551234567890',
      'image': 'http://example.com/image.jpg'
    }
  ];

  group('Employees Repository |', () {
    test(
      'should get employees sucessfully',
      () async {
        //Arrange
        final mockReponse = RestClientResponse<List<dynamic>>(
          data: mockData,
          statusCode: 200,
          statusMessage: 'Success',
        );

        when(
          () => restClient.get<List<dynamic>>('/employees'),
        ).thenAnswer(
          (_) async => mockReponse,
        );

        //Act
        final employees = await repository.getEmployees();

        //Assert
        expect(employees.length, 1);
        expect(employees.first.name, 'João');
        verify(() => restClient.get<List<dynamic>>('/employees')).called(1);
      },
      timeout: const Timeout(
        Duration(seconds: 60),
      ),
    );

    test('should handle empty response', () async {
      //Arrange
      final reponse = RestClientResponse(
        data: [],
        statusCode: 200,
        statusMessage: 'Success',
      );

      when(() => restClient.get<List<dynamic>>('/employees')).thenAnswer(
        (_) async => reponse,
      );

      //Act
      final employees = await repository.getEmployees();

      //Assert
      expect(employees, isEmpty);
      verify(() => restClient.get<List<dynamic>>('/employees')).called(1);
    });

    test('should throw exception on error', () async {
      // Arrange
      when(() => restClient.get<List<dynamic>>('/employees')).thenThrow(
        Exception('Failed to load employees'),
      );

      // Act & Assert
      expect(
        () async => await repository.getEmployees(),
        throwsA(
          isA<Exception>(),
        ),
      );

      verify(() => restClient.get<List<dynamic>>('/employees')).called(1);
    });
  });
}
