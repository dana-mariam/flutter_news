import 'package:flutter/material.dart';

import 'widgets/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          HeaderSection(),

        ],
      ),
    );
  }
}