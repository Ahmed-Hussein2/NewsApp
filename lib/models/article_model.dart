class Article {
  final String author;
  final String title;
  final String? description;
  final String url;
  final String imageUrl;
  final String publishedAt;

  Article({
    required this.author,
    required this.title,
    required this.url,
    required this.publishedAt,
    required this.description,
    required this.imageUrl,
  });
}
