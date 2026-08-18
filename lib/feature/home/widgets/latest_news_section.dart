import 'package:flutter/material.dart';

import '../../../feature/models/article_model.dart';
import 'news_card.dart';

class LatestNewsSection extends StatelessWidget {
  final List<ArticleModel> articles;

  const LatestNewsSection({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Latest News",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ListView.builder(
            itemCount: articles.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return NewsCard(
                article: articles[index],
              );
            },
          ),
        ],
      ),
    );
  }
}