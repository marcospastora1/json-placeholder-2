import 'package:ekko/domain/core/abstractions/domain/repositories/posts_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/posts/posts_controller.interface.dart';
import 'package:ekko/domain/posts/models/posts.models.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

class PostsController extends GetxController
    with EquatableMixin
    implements IPostsController {
  final IPostsRepository _repository;

  PostsController({required IPostsRepository repository})
      : _repository = repository;

  final posts = <PostsModels>[].obs;
  final load = true.obs;
  final error = false.obs;
  late int userId;
  late String name;

  @override
  void onInit() {
    super.onInit();
    userId = Get.arguments['id'];
    name = Get.arguments['name'];
    loadPosts();
  }

  @override
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

  @override
  List<Object?> get props => [_repository];
}
