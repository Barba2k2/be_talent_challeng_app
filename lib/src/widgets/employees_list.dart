import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeesList extends StatelessWidget {
  EmployeesList({super.key});

  final List<Employee> employees = [
    Employee(
      name: 'Giovana L. Arruda',
      position: 'Front-end',
      admissionDate: '00/00/0000',
      phone: '+55 (55) 55555-555',
    ),
    // Adicione mais funcionários aqui
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employees.length,
      itemBuilder: (context, index) {
        final employee = employees[index];
        return EmployerCardDS(
          title: employee.name,
          leading: CircleAvatar(
            backgroundColor: ColorsDS.gray20,
            child: Icon(
              Icons.person,
              color: ColorsDS.black,
            ),
          ),
          children: [
            _buildInfoRow('Cargo', employee.position),
            _buildInfoRow('Data de admissão', employee.admissionDate),
            _buildInfoRow('Telefone', employee.phone),
          ],
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SpacingDS.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TypographyDS.h3,
          ),
          Text(
            value,
            style: TypographyDS.h3,
          ),
        ],
      ),
    );
  }
}
