class ArticleModel {
  final String title;
  final String? description;
  final String? image;
  final String source;
  final String publishedAt;
  final String? author;
  final String? content;
  final String url;

  ArticleModel({
    required this.title,
    this.description,
    this.image,
    required this.source,
    required this.publishedAt,
    this.author,
    this.content,
    required this.url,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json["title"] ?? "",
      description: json["description"],
      image: json["urlToImage"],
      source: json["source"]?["name"] ?? "",
      publishedAt: json["publishedAt"] ?? "",
      author: json["author"],
      content: json["content"],
      url: json["url"] ?? "",
    );
  }
}