import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/posts_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/posts/dto/get_posts.response.dart';
import 'package:ekko/infrastructure/dal/services/posts/posts.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';
import 'mocks/posts_mocks/posts.mocks.dart';

void main() {
  late IHttpConnect connect;
  late IPostsService postsService;

  setUpAll(() {
    connect = ConnectMock();
    postsService = PostsService(connect);
  });

  group('Posts', () {
    test(
      'Should return a list of posts',
      () async {
        when(
          () => connect.get<GetPostsResponse>(
            'users/1/posts',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => successResponse);

        final response = await postsService.getPosts(userId: 1);

        expect(response, successResponse.payload!.data);
      },
    );

    test(
      'Should throw DefaultException',
      () async {
        when(
          () => connect.get(
            'users/1/posts',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => defaultExceptionResponse);

        final response = postsService.getPosts(userId: 1);

        expect(response, throwsA(isA<DefaultException>()));
      },
    );
  });
}
