class NewsModel {
  final String imageUrl;
  final String title;
  final String description;
  final String location;
  final String author;
  final CategoryModel categoryModel;
  final DateTime dateTime;
  NewsModel(
      {required this.imageUrl,
      required this.title,
      required this.categoryModel,
      required this.description,
      required this.location,
      required this.author,
      required this.dateTime});
}

class CategoryModel {
  final int id;
  final String name;
  CategoryModel({required this.id, required this.name});
}
