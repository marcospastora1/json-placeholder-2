import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';

abstract class ICommentsService {
  Future<List<ComentariosData>> getComments({
    required int postId,
  });
}
