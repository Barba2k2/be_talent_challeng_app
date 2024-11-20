import 'package:flutter/material.dart';
import '../theme/colors_ds.dart';
import '../theme/spacing_ds.dart';
import '../theme/typography_ds.dart';

class ButtonDS extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool disabled;

  const ButtonDS({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled || isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsDS.primary,
        padding: const EdgeInsets.symmetric(
          horizontal: SpacingDS.md,
          vertical: SpacingDS.sm,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SpacingDS.xs,
          ),
        ),
      ),
      child: isLoading
          ? const CircularProgressIndicator.adaptive(
              backgroundColor: Colors.white,
            )
          : Text(
              text,
              style: TypographyDS.h3.copyWith(
                color: Colors.white,
              ),
            ),
    );
  }
}
