import 'package:flutter/material.dart';
import '../theme/colors_ds.dart';
import '../theme/spacing_ds.dart';
import '../theme/typography_ds.dart';

class EmployerCardDS extends StatefulWidget {
  final String title;
  final Widget leading;
  final List<Widget> children;
  final bool showDivider;

  const EmployerCardDS({
    super.key,
    required this.title,
    required this.leading,
    required this.children,
    this.showDivider = false,
  });

  @override
  State<EmployerCardDS> createState() => _EmployerCardDSState();
}

class _EmployerCardDSState extends State<EmployerCardDS> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: widget.showDivider
              ? BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorsDS.gray05,
                      width: 1,
                    ),
                  ),
                )
              : null,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: SpacingDS.md,
              vertical: SpacingDS.sm,
            ),
            leading: widget.leading,
            title: Text(
              widget.title,
              style: TypographyDS.h2,
            ),
            trailing: IconButton(
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: ColorsDS.primary,
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ),
        ),
        if (_isExpanded)
          Padding(
            padding: const EdgeInsets.all(SpacingDS.md),
            child: Column(
              children: widget.children,
            ),
          ),
      ],
    );
  }
}
