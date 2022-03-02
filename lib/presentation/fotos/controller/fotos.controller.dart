import 'package:ekko/domain/fotos/fotos.repository.dart';
import 'package:ekko/domain/fotos/models/fotos.models.dart';
import 'package:get/get.dart';

class FotosController extends GetxController {
  final PhotosRepository _photosRepository;

  FotosController({required PhotosRepository photosRepository})
      : _photosRepository = photosRepository;
  final fotos = <FotosModel>[].obs;
  final albumId = Get.arguments['id'];
  final error = false.obs;
  final load = true.obs;

  @override
  void onReady() {
    loadFotos();
  }

  Future<void> loadFotos() async {
    try {
      final response = await _photosRepository.getPhotos(albumId: albumId);
      fotos.assignAll(response);
    } catch (err) {
      error.value = true;
    } finally {
      load.value = false;
    }
  }
}
