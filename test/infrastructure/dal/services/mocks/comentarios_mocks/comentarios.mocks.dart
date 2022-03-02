import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/comments/dto/get_comments.response.dart';
import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';

final successResponse = Response(
  statusCode: 200,
  payload: GetCommentsResponse(
    data: <ComentariosData>[
      ComentariosData(
        id: 1,
        postId: 1,
        name: 'Comentário',
        body: 'Corpo do comentário',
        email: 'marcospastora@gmail.com',
      )
    ],
  ),
);

final defaultExceptionResponse = Response(
  statusCode: 400,
  payload: GetCommentsResponse(
    data: <ComentariosData>[
      ComentariosData(
        id: 1,
        postId: 1,
        name: 'Comentário',
        body: 'Corpo do comentário',
        email: 'marcospastora@gmail.com',
      )
    ],
  ),
);
