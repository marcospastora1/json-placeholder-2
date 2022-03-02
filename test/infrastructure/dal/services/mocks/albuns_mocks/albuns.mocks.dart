import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/albuns/dto/get_albuns.response.dart';
import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';

final successResponse = Response(
  statusCode: 200,
  payload: GetAlbunsResponse(
    data: <AlbunsData>[
      AlbunsData(
        id: 1,
        userId: 1,
        title: 'Album de fotos',
      )
    ],
  ),
);

final defaultExceptionResponse = Response(
  statusCode: 400,
  payload: GetAlbunsResponse(
    data: <AlbunsData>[
      AlbunsData(
        id: 1,
        userId: 1,
        title: 'Album de fotos',
      ),
    ],
  ),
);
