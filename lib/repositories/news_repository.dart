import '../feature/models/article_model.dart';
import '../services/api_service.dart';

class NewsRepository {
  final ApiService _apiService = ApiService();

  Future<List<ArticleModel>> getTopHeadlines() async {
    return await _apiService.getTopHeadlines();
  }

  Future<List<ArticleModel>> getNewsByCategory(
      String category,
      ) async {
    return await _apiService.getNewsByCategory(category);
  }
}