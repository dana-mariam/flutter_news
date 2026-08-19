import 'package:flutter/material.dart';

import '../feature/models/article_model.dart';
import '../repositories/news_repository.dart';

class HomeController extends ChangeNotifier {
  final NewsRepository _repository = NewsRepository();

  List<ArticleModel> articles = [];

  bool isLoading = false;

  Future<void> getTopHeadlines() async {
    print("getTopHeadlines called");

    isLoading = true;
    notifyListeners();

    try {
      articles = await _repository.getTopHeadlines();

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
        articles = await _repository.getTopHeadlines();
      } else {
        articles = await _repository.getNewsByCategory(category);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}