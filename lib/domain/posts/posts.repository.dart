import 'package:ekko/domain/posts/models/posts.models.dart';
import 'package:ekko/infrastructure/dal/services/posts/posts.service.dart';

class PostsRepository {
  final PostsService _postsService;
  const PostsRepository({required PostsService postsService})
      : _postsService = postsService;

  Future<List<PostsModels>> getPosts({required int userId}) async {
    try {
      final response = await _postsService.getPosts(userId: userId);
      final models = response.map((e) => PostsModels.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
