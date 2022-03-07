import 'package:ekko/domain/core/abstractions/presentation/controllers/menu/menu_controller.interface.dart';
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

IMenuController makeMenuController() {
  return MenuController();
}
