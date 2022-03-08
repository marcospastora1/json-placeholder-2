import 'package:ekko/domain/comentarios/models/comentarios.models.dart';
import 'package:ekko/domain/core/abstractions/domain/repositories/comentarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/comentarios/comments_controller.interface.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

class CommentsController extends GetxController
    with EquatableMixin
    implements ICommentsController {
  final IComentariosRepository _comentariosRepository;

  CommentsController({required IComentariosRepository comentariosRepository})
      : _comentariosRepository = comentariosRepository;

  final comments = <ComentariosModel>[].obs;
  late int postId;
  final error = false.obs;
  final load = true.obs;

  @override
  void onInit() {
    super.onInit();
    postId = Get.arguments['id'];
    loadComments();
  }

  @override
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

  @override
  List<Object?> get props => [_comentariosRepository];
}
