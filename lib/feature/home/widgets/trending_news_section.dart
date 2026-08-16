import 'package:flutter/material.dart';

class TrendingNewsSection extends StatelessWidget {
  const TrendingNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: PageView.builder(
        controller: PageController(
          viewportFraction: .88,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/iPhone 13 mini - 3.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}