import 'package:ekko/domain/comentarios/models/comentarios.models.dart';

abstract class IComentariosRepository {
  Future<List<ComentariosModel>> getComments({required int postId});
}
