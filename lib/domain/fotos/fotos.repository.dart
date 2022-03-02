import 'package:ekko/domain/fotos/models/fotos.models.dart';
import 'package:ekko/infrastructure/dal/services/photos/photos.service.dart';

class PhotosRepository {
  final PhotosService _photosService;

  PhotosRepository({required PhotosService photosService})
      : _photosService = photosService;

  Future<List<FotosModel>> getPhotos({required int albumId}) async {
    try {
      final response = await _photosService.getPhotos(albumId: albumId);
      final models = response.map((e) => FotosModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
