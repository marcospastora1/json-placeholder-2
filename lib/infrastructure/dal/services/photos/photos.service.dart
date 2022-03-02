import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';
import 'package:ekko/infrastructure/dal/services/photos/dto/get_photos.response.dart';

class PhotosService {
  final IHttpConnect _connect;
  const PhotosService(IHttpConnect connect) : _connect = connect;

  Future<List<FotosData>> getPhotos({required int albumId}) async {
    final response = await _connect.get(
      'albums/$albumId/photos',
      decoder: (value) {
        var json = {'data': value};
        return GetPhotosResponse.fromJson(json);
      },
    );
    if (response.success) {
      print(response.payload);
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar os dados');
      }
    }
  }
}
