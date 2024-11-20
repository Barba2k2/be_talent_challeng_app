import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const EmployeesScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.primary,
      body: Center(
        child: Text(
          'BeTalent',
          style: TypographyDS.h1.copyWith(
            color: ColorsDS.white,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
