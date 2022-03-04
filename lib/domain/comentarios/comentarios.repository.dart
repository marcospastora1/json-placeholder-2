import 'package:ekko/domain/comentarios/models/comentarios.models.dart';
import 'package:ekko/domain/core/abstractions/domain/repositories/comentarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/comentarios_service.interface.dart';

class ComentariosRepository extends IComentariosRepository {
  final IComentariosService _commentsService;

  ComentariosRepository({required IComentariosService commentsService})
      : _commentsService = commentsService;

  @override
  Future<List<ComentariosModel>> getComments({required int postId}) async {
    try {
      final response = await _commentsService.getComments(postId: postId);
      final models = response.map((e) => ComentariosModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
