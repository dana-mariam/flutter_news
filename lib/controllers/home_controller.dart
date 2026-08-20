import 'package:flutter/material.dart';

import '../feature/models/article_model.dart';
import '../mixins/safe_notify_mixin.dart';
import '../repositories/news_repository_interface.dart';

class HomeController extends ChangeNotifier with SafeNotify {
  final NewsRepositoryInterface newsRepository;

  HomeController(this.newsRepository);

  List<ArticleModel> articles = [];

  bool isLoading = false;

  Future<void> getTopHeadlines() async {
    print("getTopHeadlines called");

    isLoading = true;
    safeNotify();

    try {
      articles = await newsRepository.getTopHeadlines();

      print("Articles: ${articles.length}");
    } catch (e) {
      print("ERROR: $e");
    }

    isLoading = false;
    safeNotify();
  }

  Future<void> getNewsByCategory(String category) async {
    try {
      isLoading = true;
      safeNotify();

      if (category == "All") {
        articles = await newsRepository.getTopHeadlines();
      } else {
        articles = await newsRepository.getNewsByCategory(category);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      safeNotify();
    }
  }
}