import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../widgets/employees_list.dart';
import '../../widgets/notifications_app_bar.dart';

part 'components/employees_screen_body.dart';

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
              child: NotificationBadge(count: '02'),
            ),
          ],
        ),
        body: _EmployessScreenBody(),
      ),
    );
  }
}
