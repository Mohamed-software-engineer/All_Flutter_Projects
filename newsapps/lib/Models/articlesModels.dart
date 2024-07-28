// ignore_for_file: file_names

class ArticlesModels {
  final String? image;
  final String title;
  final String? description;

  ArticlesModels(
      {required this.image, required this.title, required this.description});

  factory ArticlesModels.fromJason(dynamic jason) {
    return ArticlesModels(
        image: jason["urlToImage"],
        title: jason["title"],
        description: jason["description"]);
  }
}
