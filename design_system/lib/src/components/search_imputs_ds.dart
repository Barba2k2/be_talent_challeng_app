import 'package:flutter/material.dart';

import '../theme/colors_ds.dart';
import '../theme/spacing_ds.dart';
import '../theme/typography_ds.dart';

class SearchInputDS extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const SearchInputDS({
    super.key,
    this.hint = 'Pesquisar',
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SpacingDS.lg,
      ),
      decoration: BoxDecoration(
        color: ColorsDS.gray05,
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TypographyDS.h3.copyWith(
            color: ColorsDS.black,
          ),
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: ColorsDS.black,
          ),
        ),
      ),
    );
  }
}
