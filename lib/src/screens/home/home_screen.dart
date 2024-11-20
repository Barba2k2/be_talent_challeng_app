import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../widgets/employees_list.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(SpacingDS.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: ColorsDS.gray05,
                    child: Text(
                      'CG',
                      style: TypographyDS.h2,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(SpacingDS.xs),
                    decoration: const BoxDecoration(
                      color: ColorsDS.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '02',
                      style: TypographyDS.h3.copyWith(color: ColorsDS.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(SpacingDS.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Funcionários', style: TypographyDS.h1),
                    const SizedBox(height: SpacingDS.md),
                    const SearchInputDS(hint: 'Pesquisar funcionário'),
                    const SizedBox(height: SpacingDS.md),
                    Expanded(
                      child: EmployeesList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
