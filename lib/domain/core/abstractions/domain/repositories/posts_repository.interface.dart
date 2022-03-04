import 'package:ekko/domain/posts/models/posts.models.dart';

abstract class IPostsRepository {
  Future<List<PostsModels>> getPosts({required int userId});
}
