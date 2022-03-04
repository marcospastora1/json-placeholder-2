import 'package:ekko/domain/fotos/models/fotos.models.dart';

abstract class IPhotosRepository {
  Future<List<FotosModel>> getPhotos({required int albumId});
}
