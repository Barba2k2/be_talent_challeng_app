import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeTalent',
      theme: ThemeData(
        primarySwatch: ColorsDS.primary,
      ),
    );
  }
}
