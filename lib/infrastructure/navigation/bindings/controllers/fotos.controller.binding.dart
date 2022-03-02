import 'package:ekko/infrastructure/navigation/bindings/domains/fotos.repository.binding.dart';
import 'package:ekko/presentation/fotos/controller/fotos.controller.dart';
import 'package:get/get.dart';

class FotosControllerBinding extends Bindings {
  @override
  void dependencies() {
    final fotosRepositoryBinding = FotosRepositoryBinding();
    Get.lazyPut<FotosController>(
      () => FotosController(
        photosRepository: fotosRepositoryBinding.repository,
      ),
    );
  }
}
