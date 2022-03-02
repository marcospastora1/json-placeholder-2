import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';
import 'package:ekko/infrastructure/dal/services/photos/dto/get_photos.response.dart';

final successResponse = Response(
  statusCode: 200,
  payload: GetPhotosResponse(
    data: <FotosData>[
      FotosData(
        id: 1,
        albumId: 1,
        title: 'Foto bonita',
        url: 'http://fotos.com.br',
        thumbnailUrl: 'http://fotos.com.br/thumbnail',
      ),
    ],
  ),
);

final defaultExceptionResponse = Response(
  statusCode: 400,
  payload: GetPhotosResponse(
    data: <FotosData>[
      FotosData(
        id: 1,
        albumId: 1,
        title: 'Foto bonita',
        url: 'http://fotos.com.br',
        thumbnailUrl: 'http://fotos.com.br/thumbnail',
      ),
    ],
  ),
);
