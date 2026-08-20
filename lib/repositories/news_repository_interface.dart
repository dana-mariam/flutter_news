import '../feature/models/article_model.dart';

abstract class NewsRepositoryInterface {
  Future<List<ArticleModel>> getTopHeadlines();

  Future<List<ArticleModel>> getNewsByCategory(
      String category,
      );
  Future<List<ArticleModel>> searchNews(
      String query,
      );
}
