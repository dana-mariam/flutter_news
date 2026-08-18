import 'package:flutter/material.dart';
import 'package:news_app/feature/home/widgets/category_section.dart';
import 'package:provider/provider.dart';

import '../../controllers/home_controller.dart';
import 'widgets/header_section.dart';
import 'widgets/latest_news_section.dart';
import 'widgets/trending_news_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<HomeController>().getTopHeadlines();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();



    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const HeaderSection(),

                Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  child: TrendingNewsSection(
                    articles: controller.articles,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 140),
            CategorySection(
              onSelect: (category) {
                controller.getNewsByCategory(
                  category,
                );
              },
            ),

            const SizedBox(height: 20),

            LatestNewsSection(
              articles: controller.articles,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}