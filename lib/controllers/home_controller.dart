import 'package:flutter/material.dart';

import '../feature/models/article_model.dart';
import '../services/api_service.dart';

class HomeController extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<ArticleModel> articles = [];

  bool isLoading = false;

  Future<void> getTopHeadlines() async {
    try {
      isLoading = true;
      notifyListeners();

      articles = await _apiService.getTopHeadlines();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getNewsByCategory(String category) async {
    try {
      isLoading = true;
      notifyListeners();

      if (category == "All") {
        articles = await _apiService.getTopHeadlines();
      } else {
        articles =
        await _apiService.getNewsByCategory(category);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}