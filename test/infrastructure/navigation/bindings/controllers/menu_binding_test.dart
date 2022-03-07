import 'package:ekko/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:ekko/presentation/menu/controller/menu.controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return correct controller', () {
    final controller = makeMenuController();
    final menuController = MenuController();

    expect(controller, menuController);
  });
}
