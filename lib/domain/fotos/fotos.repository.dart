import 'package:ekko/domain/core/abstractions/domain/repositories/fotos_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/photos_service.interface.dart';
import 'package:ekko/domain/fotos/models/fotos.models.dart';

class PhotosRepository extends IPhotosRepository {
  final IPhotosService _photosService;

  PhotosRepository({required IPhotosService photosService})
      : _photosService = photosService;

  @override
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
