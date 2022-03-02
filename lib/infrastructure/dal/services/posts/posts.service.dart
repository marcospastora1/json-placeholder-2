import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/posts_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';
import 'package:ekko/infrastructure/dal/services/posts/dto/get_posts.response.dart';

class PostsService implements IPostsService {
  final IHttpConnect _connect;
  const PostsService(IHttpConnect connect) : _connect = connect;

  @override
  Future<List<PostsData>> getPosts({required int userId}) async {
    final response = await _connect.get(
      'users/$userId/posts',
      decoder: (value) {
        var json = {'data': value};
        return GetPostsResponse.fromJson(json);
      },
    );
    if (response.success) {
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar os dados');
      }
    }
  }
}
