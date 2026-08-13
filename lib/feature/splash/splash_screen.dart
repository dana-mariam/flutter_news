import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/iPhone 13 mini - 3.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}