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
      imageUrl: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsDS.gray10,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Cabeçalho da lista
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: SpacingDS.md,
              vertical: SpacingDS.sm,
            ),
            decoration: BoxDecoration(
              color: ColorsDS.blue10,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Foto',
                  style: TypographyDS.h2.copyWith(
                    color: ColorsDS.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: SpacingDS.lg),
                Text(
                  'Nome',
                  style: TypographyDS.h2.copyWith(
                    color: ColorsDS.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14.0),
                  child: Icon(
                    Icons.circle_rounded,
                    color: ColorsDS.black,
                    size: 8,
                  ),
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
                  imageUrl: employee.imageUrl,
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
      ),
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
            style: TypographyDS.h2.copyWith(
              color: ColorsDS.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: TypographyDS.h2.copyWith(
              color: ColorsDS.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
