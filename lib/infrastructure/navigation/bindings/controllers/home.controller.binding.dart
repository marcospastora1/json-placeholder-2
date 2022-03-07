import 'package:ekko/domain/core/abstractions/domain/repositories/usuarios_repository.interface.dart';
import 'package:ekko/infrastructure/navigation/bindings/domains/home.repository.binding.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

import '../../../../domain/core/abstractions/presentation/controllers/home/home_controller.interface.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final userRepositoryBinding = HomeRepositoryBinding();
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: userRepositoryBinding.repository,
      ),
    );
  }
}

IHomeController makeHomeController(
    {required IUsuariosRepository usuariosRepository}) {
  return HomeController(repository: usuariosRepository);
}
