import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';

abstract class IPhotosService {
  Future<List<FotosData>> getPhotos({
    required int albumId,
  });
}
