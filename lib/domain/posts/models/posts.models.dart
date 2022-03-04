import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';
import 'package:equatable/equatable.dart';

class PostsModels extends Equatable {
  final int userId, id;
  final String title, body;

  const PostsModels({
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

  @override
  List<Object?> get props => [id];
}
