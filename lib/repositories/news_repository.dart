import '../feature/models/article_model.dart';
import '../services/api_service.dart';

import 'news_repository_interface.dart';

class NewsRepository
    implements NewsRepositoryInterface {
  final ApiService _apiService = ApiService();
  @override
  Future<List<ArticleModel>> getTopHeadlines() async {
    return await _apiService.getTopHeadlines();
  }

  @override
  Future<List<ArticleModel>> getNewsByCategory(
      String category,
      ) async {
    return await _apiService.getNewsByCategory(category);
  }
}