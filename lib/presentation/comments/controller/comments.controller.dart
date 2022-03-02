import 'package:ekko/domain/comentarios/comentarios.repository.dart';
import 'package:ekko/domain/comentarios/models/comentarios.models.dart';
import 'package:get/get.dart';

class CommentsController extends GetxController {
  final ComentariosRepository _comentariosRepository;

  CommentsController({required ComentariosRepository comentariosRepository})
      : _comentariosRepository = comentariosRepository;

  final comments = <ComentariosModel>[].obs;
  final postId = Get.arguments['id'];
  final error = false.obs;
  final load = true.obs;

  @override
  void onReady() {
    loadComments();
  }

  Future<void> loadComments() async {
    try {
      final response = await _comentariosRepository.getComments(postId: postId);
      comments.assignAll(response);
    } catch (err) {
      error.value = true;
    } finally {
      load.value = false;
    }
  }
}
