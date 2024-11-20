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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Cabeçalho da lista
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingDS.md,
            vertical: SpacingDS.sm,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorsDS.gray05,
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Foto',
                style: TypographyDS.h3.copyWith(
                  color: ColorsDS.black,
                ),
              ),
              const SizedBox(width: SpacingDS.lg),
              Text(
                'Nome',
                style: TypographyDS.h3.copyWith(
                  color: ColorsDS.black,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.more_vert,
                color: ColorsDS.black,
                size: 20,
              ),
            ],
          ),
        ),
        // Lista de funcionários
        Expanded(
          child: ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              final employee = employees[index];
              return EmployerCardDS(
                title: employee.name,
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorsDS.gray05,
                  child: Icon(
                    Icons.person,
                    color: ColorsDS.black,
                    size: 20,
                  ),
                ),
                showDivider: true,
                children: [
                  _buildInfoRow('Cargo', employee.position),
                  _buildInfoRow('Data de admissão', employee.admissionDate),
                  _buildInfoRow('Telefone', employee.phone),
                ],
              );
            },
          ),
        ),
      ],
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
