import '../../domain/entities/blog_entity.dart';

class BlogModel extends BlogEntity {
  const BlogModel({
    required super.id,
    required super.title,
    required super.image,
    required super.category,
    required super.content,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
      id: json['blog']['id'],
      title: json['blog']['title'],
      image: json['blog']['image'],
      category: json['blog']['category'],
      content: json['blog']['content'],
    );
  }
}
