import 'package:flutter/material.dart';

import '../../../models/employee.dart';
import '../repository/employees_repository.dart';

class EmployeesController extends ChangeNotifier {
  final EmployeesRepository _repository;
  List<Employee> employees = [];
  bool isLoading = false;
  String? error;

  EmployeesController(this._repository);

  Future<void> loadEmployees() async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      employees = await _repository.getEmployees();
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
