import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';

abstract class IComentariosService {
  Future<List<ComentariosData>> getComments({
    required int postId,
  });
}
