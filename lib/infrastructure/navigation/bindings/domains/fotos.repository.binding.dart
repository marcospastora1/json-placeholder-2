import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/fotos/fotos.repository.dart';
import 'package:ekko/infrastructure/dal/services/photos/photos.service.dart';
import 'package:get/get.dart';

class FotosRepositoryBinding {
  late PhotosRepository _photosRepository;
  PhotosRepository get repository => _photosRepository;

  FotosRepositoryBinding() {
    final getConnect = Get.find<IHttpConnect>();
    final fotosService = PhotosService(getConnect);
    _photosRepository = PhotosRepository(
      photosService: fotosService,
    );
  }
}
