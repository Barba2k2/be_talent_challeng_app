import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../widgets/employees_list.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsDS.white,
        appBar: AppBarDS(
          leading: CircleAvatar(
            radius: 22,
            backgroundColor: ColorsDS.gray05,
            child: Text(
              'CG',
              style: TypographyDS.h2,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SpacingDS.lg),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.notifications_none_rounded,
                    color: ColorsDS.black,
                    size: 36,
                  ),
                  Positioned(
                    right: 0,
                    top: 14,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: ColorsDS.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '02',
                          textAlign: TextAlign.center,
                          style: TypographyDS.h3.copyWith(
                            color: ColorsDS.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingDS.md,
            vertical: SpacingDS.xl,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Funcionários',
                style: TypographyDS.h1.copyWith(
                  color: ColorsDS.black,
                ),
              ),
              const SizedBox(
                height: SpacingDS.md,
              ),
              const SearchInputDS(
                hint: 'Pesquisar',
              ),
              const SizedBox(
                height: SpacingDS.md,
              ),
              Expanded(
                child: EmployeesList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
