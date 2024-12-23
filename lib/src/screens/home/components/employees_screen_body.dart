part of '../home_screen.dart';

class _EmployessScreenBody extends StatelessWidget {
  const _EmployessScreenBody({
    required this.controller,
    required this.onRetry,
  });

  final EmployeesController controller;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: SpacingDS.xl,
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
          SearchInputDS(
            hint: 'Pesquisar',
            onChanged: controller.searchEmployees,
          ),
          const SizedBox(
            height: SpacingDS.xl,
          ),
          AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              return EmployeesList(
                employees: controller.employees,
                isLoading: controller.isLoading,
                error: controller.error,
                onRetry: onRetry,
              );
            },
          ),
        ],
      ),
    );
  }
}
