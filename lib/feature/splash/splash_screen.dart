import 'package:flutter/material.dart';
import 'package:news_app/services/shared_preferences_service.dart';


import '../../constants/storage_key.dart';
import '../home/home_screen.dart';
import '../main/main_screen.dart';
import '../onboarding/onboarding_screen.dart';


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
    print("1");

    await Future.delayed(
      const Duration(seconds: 2),
    );

    print("2");

    bool? isFirstTime =
    await SharedPreferencesService.getBool(
      StorageKey.isFirstTime,
    );

    print("3");
    print(isFirstTime);

    if (isFirstTime == null || isFirstTime == true) {
      print("Go Onboarding");

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        ),
      );
    } else {
      print("Go Home");

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