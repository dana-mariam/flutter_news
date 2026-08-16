import 'package:flutter/material.dart';
import 'package:news_app/feature/home/widgets/trending_news_section.dart';

import 'widgets/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              clipBehavior: Clip.none,
              children: [

                const HeaderSection(),

                const Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  child: TrendingNewsSection(),
                ),

              ],
            ),

            const SizedBox(height: 140),

          ],
        ),
      ),
    );
  }
}