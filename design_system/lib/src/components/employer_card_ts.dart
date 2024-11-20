import 'package:flutter/material.dart';
import '../theme/colors_ds.dart';
import '../theme/spacing_ds.dart';
import '../theme/typography_ds.dart';

class EmployerCardDS extends StatefulWidget {
  final String title;
  final Widget leading;
  final List<Widget> children;

  const EmployerCardDS({
    Key? key,
    required this.title,
    required this.leading,
    required this.children,
  }) : super(key: key);

  @override
  State<EmployerCardDS> createState() => _EmployerCardDSState();
}

class _EmployerCardDSState extends State<EmployerCardDS> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: SpacingDS.xs),
      child: Column(
        children: [
          ListTile(
            leading: widget.leading,
            title: Text(
              widget.title,
              style: TypographyDS.h2,
            ),
            trailing: IconButton(
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: ColorsDS.primary,
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
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
      ),
    );
  }
}
