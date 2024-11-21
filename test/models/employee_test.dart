import 'package:be_talent_challeng_app/src/models/employee.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Employee Model |', () {
    test('should create Emplyee instance from json', () {
      //Arrange
      final json = {
        "id": "1",
        'name': 'João',
        'job': 'Back-end',
        'admission_date': '2019-12-02T00:00:00.000Z',
        'phone': '5551234567890',
        'image': 'http://image.url',
      };
      //Act
      final employee = Employee.fromJson(json);

      //Assert
      expect(employee.id, '1');
      expect(employee.name, 'João');
      expect(employee.position, 'Back-end');
      expect(employee.phone, '5551234567890');

      expect(employee.imageUrl, 'http://image.url');
      expect(employee.admissionDate, '2019-12-02T00:00:00.000Z');
    });

    test('should format phone number correctly', () {
      // Arrange
      final employee = Employee(
        id: '1',
        name: 'João',
        position: 'Back-end',
        admissionDate: '2019-12-02T00:00:00.000Z',
        phone: '5551234567890',
      );

      // Act & Assert
      expect(employee.formattedPhone, '55 51234-567890');
    });

    test('should handle null image url', () {
      // Arrange
      final json = {
        'id': '1',
        'name': 'João',
        'job': 'Back-end',
        'admission_date': '2019-12-02T00:00:00.000Z',
        'phone': '5551234567890',
        'image': null,
      };

      // Act
      final employee = Employee.fromJson(json);

      // Assert
      expect(employee.imageUrl, isNull);
    });
  });
}
