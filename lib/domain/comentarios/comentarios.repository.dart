import 'package:ekko/domain/comentarios/models/comentarios.models.dart';
import 'package:ekko/infrastructure/dal/services/comments/comments.service.dart';

class ComentariosRepository {
  final CommentsService _commentsService;

  ComentariosRepository({required CommentsService commentsService})
      : _commentsService = commentsService;

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
