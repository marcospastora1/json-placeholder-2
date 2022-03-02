import 'package:ekko/infrastructure/navigation/bindings/domains/posts.repository.binding.dart';
import 'package:ekko/presentation/posts/controller/posts.controller.dart';
import 'package:get/get.dart';

class PostsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final postsRepositoryBinding = PostsRepositoryBinding();
    Get.lazyPut<PostsController>(
      () => PostsController(
        repository: postsRepositoryBinding.repository,
      ),
    );
  }
}
