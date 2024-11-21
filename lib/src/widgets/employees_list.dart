import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeesList extends StatelessWidget {
  final List<Employee> employees;
  final bool isLoading;
  final String? error;
  final VoidCallback onRetry;

  const EmployeesList({
    super.key,
    required this.employees,
    required this.isLoading,
    required this.error,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              error!,
              style: TypographyDS.h2.copyWith(
                color: ColorsDS.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SpacingDS.md),
            ButtonDS(
              text: 'Tentar novamente',
              onPressed: onRetry,
            ),
          ],
        ),
      );
    }

    if (employees.isEmpty) {
      return Center(
        child: Text(
          'Nenhum funcionário encontrado',
          style: TypographyDS.h2.copyWith(
            color: ColorsDS.black,
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsDS.gray10),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
          Column(
            children: employees.map((employee) {
              return EmployeeCardDS(
                title: employee.name,
                imageUrl: employee.imageUrl,
                showDivider: true,
                children: [
                  _buildInfoRow('Cargo', employee.position),
                  _buildInfoRow(
                    'Data de admissão',
                    employee.formattedAdmissionDate,
                  ),
                  _buildInfoRow('Telefone', employee.formattedPhone),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SpacingDS.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TypographyDS.h3),
          Text(value, style: TypographyDS.h3),
        ],
      ),
    );
  }
}
