part of '../home_screen.dart';

class _EmployessScreenBody extends StatelessWidget {
  const _EmployessScreenBody({
    super.key,
  });

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
          const SearchInputDS(
            hint: 'Pesquisar',
          ),
          const SizedBox(
            height: SpacingDS.xl,
          ),
          Expanded(
            child: EmployeesList(),
          ),
        ],
      ),
    );
  }
}
