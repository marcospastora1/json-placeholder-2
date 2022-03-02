import 'package:ekko/presentation/menu/controller/menu.controller.dart';
import 'package:get/get.dart';

class MenuControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(
      () => MenuController(),
    );
  }
}
