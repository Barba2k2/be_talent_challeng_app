import 'package:be_talent_challeng_app/src/features/employees/controller/employees_controller.dart';
import 'package:be_talent_challeng_app/src/models/employee.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mock/mock_employees_repository.dart';

void main() {
  late EmployeesController controller;
  late MockEmployeesRepository repository;

  setUp(() {
    repository = MockEmployeesRepository();
    controller = EmployeesController(repository);
  });

  final mockEmployes = [
    Employee(
      id: '1',
      name: 'João',
      position: 'Back-end',
      admissionDate: '2019-12-02T00:00:000Z',
      phone: '5551234567890',
    ),
    Employee(
      id: '2',
      name: 'Maria',
      position: 'Front-end',
      admissionDate: '2020-01-02T00:00:000Z',
      phone: '5551234567891',
    ),
  ];

  group('EmployeesController |', () {
    test('should load employees sucessfuly', () async {
      // Arrange
      when(() => repository.getEmployees()).thenAnswer(
        (_) async => mockEmployes,
      );
      // Act
      await controller.loadEmployees();
      // Assert
      expect(controller.employees, mockEmployes);
      expect(controller.error, isNull);
      expect(controller.isLoading, false);
    });

    test('should handle error when loading employess', () async {
      // Arrange
      when(() => repository.getEmployees()).thenThrow(
        Exception('Failed to load employees'),
      );

      // Act
      await controller.loadEmployees();

      // Assert
      expect(controller.employees, isEmpty);
      expect(controller.error, isNotNull);
      expect(controller.isLoading, false);
    });

    group('search functionality |', () {
      setUp(() async {
        when(
          () => repository.getEmployees(),
        ).thenAnswer(
          (_) async => mockEmployes,
        );

        await controller.loadEmployees();
      });

      test('should filter by name', () {
        // Act

        controller.searchEmployees('João');

        // Assert

        expect(controller.employees.length, 1);
        expect(controller.employees.first.position, 'Front-end');
      });

      test('should filter by phone', () {
        // Act
        controller.searchEmployees('7891');

        // Assert
        expect(controller.employees.length, 1);
        expect(controller.employees.first.name, 'Maria');
      });

      test('should return empty list when no matches found', () {
        // Act
        controller.searchEmployees('xyz');

        // Assert
        expect(controller.employees, isEmpty);
      });
    });
  });
}
