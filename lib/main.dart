import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/onboarding_controller.dart';

import 'feature/home/home_screen.dart';
import 'feature/onboarding/onboarding_screen.dart';
import 'feature/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        theme: ThemeData(
          primaryColor: const Color(0xFFC53030),
          appBarTheme: const AppBarTheme(),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
        ),

        home: const SplashScreen(),
        // أو إذا بدك تبدأ من السبلاش:
        // home: const SplashScreen(),
      ),
    );
  }
}