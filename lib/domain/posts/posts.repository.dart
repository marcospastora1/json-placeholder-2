import 'package:ekko/domain/core/abstractions/domain/repositories/posts_repository.interface.dart';
import 'package:ekko/domain/posts/models/posts.models.dart';

import '../core/abstractions/infrastructure/services/posts_service.interface.dart';

class PostsRepository implements IPostsRepository {
  final IPostsService _postsService;
  const PostsRepository({required IPostsService postsService})
      : _postsService = postsService;

  @override
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
