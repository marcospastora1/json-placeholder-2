import 'package:ekko/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  test('Should return correct controller', () {
    final usuariosRepository = UsuariosRepositoryMock();

    final controller =
        makeHomeController(usuariosRepository: usuariosRepository);
    final homeController = HomeController(repository: usuariosRepository);

    expect(controller, homeController);
  });
}
