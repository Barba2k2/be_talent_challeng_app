import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../core/logger/logger_app_logger_impl.dart';
import '../../core/rest_client/dio/dio_rest_client.dart';
import '../../features/employees/controller/employees_controller.dart';
import '../../features/employees/repository/employees_repository.dart';
import '../../widgets/employees_list.dart';
import '../../widgets/notifications_app_bar.dart';

part 'components/employees_screen_body.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({
    super.key,
  });

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  late final EmployeesController _controller;
  final _logger = LoggerAppLoggerImpl();

  @override
  void initState() {
    super.initState();
    final restClient = DioRestClient(logger: _logger);
    final repository = EmployeesRepository(restClient);
    _controller = EmployeesController(repository);
    _loadEmployees();
  }

  Future<void> _loadEmployees() async {
    await _controller.loadEmployees();
    if (mounted) setState(() {});
  }

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
        body: _EmployessScreenBody(
          controller: _controller,
          onRetry: _loadEmployees,
        ),
      ),
    );
  }
}
