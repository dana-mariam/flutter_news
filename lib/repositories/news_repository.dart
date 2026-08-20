import '../feature/models/article_model.dart';
import '../services/api_service.dart';
import 'news_repository_interface.dart';

class NewsRepository implements NewsRepositoryInterface {
  final ApiService _apiService = ApiService();

  @override
  Future<List<ArticleModel>> getTopHeadlines() {
    return _apiService.getTopHeadlines();
  }

  @override
  Future<List<ArticleModel>> getNewsByCategory(
      String category,
      ) {
    return _apiService.getNewsByCategory(category);
  }

  @override
  Future<List<ArticleModel>> searchNews(
      String query,
      ) {
    return _apiService.searchNews(query);
  }
}