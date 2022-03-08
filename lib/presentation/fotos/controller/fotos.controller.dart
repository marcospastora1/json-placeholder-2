import 'package:ekko/domain/core/abstractions/domain/repositories/fotos_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/fotos/fotos_controller.interface.dart';
import 'package:ekko/domain/fotos/models/fotos.models.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

class FotosController extends GetxController
    with EquatableMixin
    implements IFotosController {
  final IPhotosRepository _photosRepository;

  FotosController({required IPhotosRepository photosRepository})
      : _photosRepository = photosRepository;
  final fotos = <FotosModel>[].obs;
  late int albumId;
  final error = false.obs;
  final load = true.obs;

  @override
  void onInit() {
    super.onInit();
    albumId = Get.arguments['id'];
    loadFotos();
  }

  @override
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

  @override
  List<Object?> get props => [_photosRepository];
}
