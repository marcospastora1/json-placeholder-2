import 'package:ekko/domain/core/abstractions/domain/repositories/posts_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/posts/posts_controller.interface.dart';
import 'package:ekko/presentation/posts/controller/posts.controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  test('Should return correct controller', () {
    final postsRepository = PostsRepositoryMock();

    final controller = makePostsController(postsRepository: postsRepository);
    final postsController = PostsController(repository: postsRepository);

    expect(controller, postsController);
  });
}

IPostsController makePostsController({
  required IPostsRepository postsRepository,
}) {
  return PostsController(repository: postsRepository);
}
