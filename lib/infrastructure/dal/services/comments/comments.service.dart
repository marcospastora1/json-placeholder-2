import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/comments/dto/get_comments.response.dart';
import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';

class CommentsService {
  final IHttpConnect _connect;

  CommentsService(IHttpConnect connect) : _connect = connect;

  Future<List<ComentariosData>> getComments({required int postId}) async {
    final response = await _connect.get(
      'posts/$postId/comments',
      decoder: (value) {
        var json = {'data': value};
        return GetCommentsResponse.fromJson(json);
      },
    );
    if (response.success) {
      print(response);
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar os dados');
      }
    }
  }
}
