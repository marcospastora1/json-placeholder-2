import 'package:ekko/domain/core/abstractions/presentation/controllers/menu/menu_controller.interface.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

class MenuController extends GetxController
    with EquatableMixin
    implements IMenuController {
  late final arguments = Get.arguments;

  @override
  List<Object?> get props => [arguments];
}
