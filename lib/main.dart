import 'package:flutter/material.dart' hide SearchController;
import 'package:news_app/repositories/news_repository.dart';
import 'package:provider/provider.dart';

import 'controllers/home_controller.dart';
import 'feature/search/controllers/search_controller.dart';



import 'feature/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeController(
            NewsRepository(),
          ),
        ),

        ChangeNotifierProvider(
          create: (_) => SearchController(
            NewsRepository(),
          ),
        ),
      ],
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
        home: const MainScreen(),
      ),
    );
  }
}