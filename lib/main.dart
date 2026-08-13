import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primaryColor: const Color(0xFFC53030),

        appBarTheme: const AppBarTheme(),

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),

      home: const SplashScreen(),
    );
  }
}