import 'package:ekko/infrastructure/navigation/bindings/domains/home.repository.binding.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

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
