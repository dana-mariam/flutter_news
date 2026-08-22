import 'package:flutter/material.dart';
import 'package:news_app/services/shared_preferences_service.dart';

import 'constants/storage_key.dart';
import 'feature/main/main_screen.dart';
import 'feature/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    bool? isFirstTime = await SharedPreferencesService.getBool(
      StorageKey.isFirstTime,
    );

    if (isFirstTime == null || isFirstTime == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const MainScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/iPhone 13 mini - 3.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}