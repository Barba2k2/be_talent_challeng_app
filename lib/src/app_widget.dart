import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

import 'screens/splash_screen/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeTalent',
      theme: ThemeData(
        primarySwatch: ColorsDS.primary,
        fontFamily: 'Helvetica',
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
