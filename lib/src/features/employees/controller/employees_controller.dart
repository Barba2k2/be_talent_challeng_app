import 'package:flutter/material.dart';

import '../../../models/employee.dart';
import '../repository/employees_repository.dart';

class EmployeesController extends ChangeNotifier {
  final EmployeesRepository _repository;
  List<Employee> _filteredEmployees = [];
  List<Employee> _allEmployees = [];
  bool isLoading = false;
  String? error;

  EmployeesController(this._repository);

  List<Employee> get employees => _filteredEmployees;

  Future<void> loadEmployees() async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      _allEmployees = await _repository.getEmployees();
      _filteredEmployees = _allEmployees;
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void searchEmployees(String query) {
    if (query.isEmpty) {
      _filteredEmployees = _allEmployees;
      notifyListeners();
      return;
    }

    final searchTerm = query.toLowerCase().trim();
    _filteredEmployees = _allEmployees.where(
      (employee) {
        return employee.name.toLowerCase().contains(searchTerm) ||
            employee.position.toLowerCase().contains(searchTerm) ||
            employee.phone.contains(searchTerm);
      },
    ).toList();

    notifyListeners();
  }
}
