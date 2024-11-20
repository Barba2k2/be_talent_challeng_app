import 'package:flutter/material.dart';

import '../theme/colors_ds.dart';

class AppBarDS extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final List<Widget>? actions;
  final double height;
  final Color backgroundColor;
  final double elevation;

  const AppBarDS({
    super.key,
    this.leading,
    this.actions,
    this.height = 68,
    this.backgroundColor = ColorsDS.white,
    this.elevation = 0,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      automaticallyImplyLeading: false,
      toolbarHeight: height,
      title: leading,
      actions: actions,
    );
  }
}
