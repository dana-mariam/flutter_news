import 'package:flutter/material.dart';

import '../../../mixins/safe_notify_mixin.dart';
import '../../../repositories/news_repository_interface.dart';
import '../../models/article_model.dart';



class SearchController extends ChangeNotifier with SafeNotify {
  final NewsRepositoryInterface repository;

  SearchController(this.repository);

  List<ArticleModel> articles = [];

  bool isLoading = false;

  Future<void> searchNews(String query) async {
    if (query.trim().isEmpty) {
      articles.clear();
      safeNotify();
      return;
    }

    try {
      isLoading = true;
      safeNotify();

      articles = await repository.searchNews(query);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      safeNotify();
    }
  }
}