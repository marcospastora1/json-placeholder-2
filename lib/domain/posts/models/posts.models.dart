import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';

class PostsModels {
  final int userId, id;
  final String title, body;

  PostsModels({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostsModels.fromData(PostsData data) {
    return PostsModels(
      userId: data.userId,
      id: data.id,
      title: data.title,
      body: data.body,
    );
  }
}
