import 'package:ekko/infrastructure/navigation/bindings/domains/comments.repository.binding.dart';
import 'package:ekko/presentation/comments/controller/comments.controller.dart';
import 'package:get/get.dart';

class CommentsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final commentsRepositoryBinding = CommentsRepositoryBinding();
    Get.lazyPut<CommentsController>(
      () => CommentsController(
          comentariosRepository: commentsRepositoryBinding.repository),
    );
  }
}
