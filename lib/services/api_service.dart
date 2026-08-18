import 'package:dio/dio.dart';

import '../core/constants/api_constants.dart';
import '../feature/models/article_model.dart';

class ApiService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getTopHeadlines() async {
    try {
      final response = await dio.get(
        "${ApiConstants.baseUrl}/top-headlines",
        queryParameters: {
          "country": "us",
          "apiKey": ApiConstants.apiKey,
        },
      );

      print("Response:");
      print(response.data);

      final List articles = response.data["articles"];

      return articles
          .map((e) => ArticleModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      print("Status Code: ${e.response?.statusCode}");
      print("Error:");
      print(e.response?.data);

      throw Exception(e.message);
    } catch (e) {
      print(e);

      throw Exception(e.toString());
    }
  }
  Future<List<ArticleModel>> getNewsByCategory(
      String category,
      ) async {
    try {
      final response = await dio.get(
        "${ApiConstants.baseUrl}/top-headlines",
        queryParameters: {
          "country": "us",
          "category": category.toLowerCase(),
          "apiKey": ApiConstants.apiKey,
        },
      );

      final List articles = response.data["articles"];

      return articles
          .map((e) => ArticleModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}