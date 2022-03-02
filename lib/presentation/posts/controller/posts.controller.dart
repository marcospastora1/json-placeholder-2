import 'package:ekko/domain/posts/models/posts.models.dart';
import 'package:ekko/domain/posts/posts.repository.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {
  final PostsRepository _repository;

  PostsController({required PostsRepository repository})
      : _repository = repository;

  final posts = <PostsModels>[].obs;
  final load = true.obs;
  final error = false.obs;
  final userId = Get.arguments['id'];
  final name = Get.arguments['name'];

  @override
  void onReady() {
    Get.arguments;
    loadPosts();
  }

  Future<void> loadPosts() async {
    try {
      final response = await _repository.getPosts(userId: userId);
      posts.assignAll(response);
    } catch (err) {
      error.value = true;
    } finally {
      load.value = false;
    }
  }
}
