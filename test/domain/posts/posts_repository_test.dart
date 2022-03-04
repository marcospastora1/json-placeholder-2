import 'package:ekko/domain/core/abstractions/domain/repositories/posts_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/posts_service.interface.dart';
import 'package:ekko/domain/posts/models/posts.models.dart';
import 'package:ekko/domain/posts/posts.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';
import 'mocks/posts_mocks.dart';

void main() {
  late IPostsRepository postsRepository;
  late IPostsService postsService;

  setUpAll(() {
    postsService = PostsServiceMock();
    postsRepository = PostsRepository(postsService: postsService);
  });

  test(
    'Should return a list of posts models',
    () async {
      const userId = 9;

      when(
        () => postsService.getPosts(userId: userId),
      ).thenAnswer((_) async => responseSuccess);

      final response = await postsRepository.getPosts(userId: userId);
      final models =
          responseSuccess.map((e) => PostsModels.fromData(e)).toList();
      //final models = [PostsModels.fromData(responseSuccess.first)];

      expect(response, models);
    },
  );
}
