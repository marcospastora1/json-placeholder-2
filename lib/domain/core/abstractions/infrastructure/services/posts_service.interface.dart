import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';

abstract class IPostsService {
  Future<List<PostsData>> getPosts({required int userId});
}
