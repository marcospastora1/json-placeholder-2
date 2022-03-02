import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';
import 'package:ekko/infrastructure/dal/services/posts/dto/get_posts.response.dart';

final successResponse = Response(
  statusCode: 200,
  payload: GetPostsResponse(
    data: <PostsData>[
      PostsData(
        id: 1,
        userId: 1,
        title: 'Post teste',
        body: 'Era uma vez um post',
      ),
    ],
  ),
);

final defaultExceptionResponse = Response(
  statusCode: 400,
  payload: GetPostsResponse(
    data: <PostsData>[
      PostsData(
        id: 1,
        userId: 1,
        title: 'Post teste',
        body: 'Era uma vez um post',
      ),
    ],
  ),
);
