import 'package:ekko/domain/comentarios/comentarios.repository.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/infrastructure/dal/services/comments/comments.service.dart';
import 'package:get/get.dart';

class CommentsRepositoryBinding {
  late ComentariosRepository _comentariosRepository;
  ComentariosRepository get repository => _comentariosRepository;

  CommentsRepositoryBinding() {
    final getConnect = Get.find<IHttpConnect>();
    final commentsService = CommentsService(getConnect);
    _comentariosRepository = ComentariosRepository(
      commentsService: commentsService,
    );
  }
}
