import 'package:flutter/material.dart';

import '../feature/models/article_model.dart';
import '../repositories/news_repository.dart';

class HomeController extends ChangeNotifier {
  final NewsRepository newsRepository;

  HomeController(this.newsRepository);

  List<ArticleModel> articles = [];

  bool isLoading = false;

  Future<void> getTopHeadlines() async {
    print("getTopHeadlines called");

    isLoading = true;
    notifyListeners();

    try {
      articles = await newsRepository.getTopHeadlines();

      print("Articles: ${articles.length}");
    } catch (e) {
      print("ERROR: $e");
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> getNewsByCategory(String category) async {
    try {
      isLoading = true;
      notifyListeners();

      if (category == "All") {
        articles = await newsRepository.getTopHeadlines();
      } else {
        articles = await newsRepository.getNewsByCategory(category);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}