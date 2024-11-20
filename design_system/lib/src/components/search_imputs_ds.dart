import 'package:flutter/material.dart';

import '../theme/colors_ds.dart';
import '../theme/spacing_ds.dart';
import '../theme/typography_ds.dart';

class SearchInputDS extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const SearchInputDS({
    Key? key,
    this.hint = 'Pesquisar',
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SpacingDS.md,
      ),
      decoration: BoxDecoration(
        color: ColorsDS.gray10,
        borderRadius: BorderRadius.circular(
          SpacingDS.sm,
        ),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TypographyDS.h3.copyWith(
            color: ColorsDS.black.withOpacity(0.5),
          ),
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: ColorsDS.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
