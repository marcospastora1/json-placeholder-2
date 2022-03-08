import 'package:ekko/domain/core/abstractions/domain/repositories/fotos_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/fotos/fotos_controller.interface.dart';
import 'package:ekko/presentation/fotos/controller/fotos.controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  test('Should return correct controller', () {
    final fotosRepository = FotosRepositoryMock();

    final controller = makeFotosController(photosRepository: fotosRepository);
    final fotosController = FotosController(photosRepository: fotosRepository);

    expect(controller, fotosController);
  });
}

IFotosController makeFotosController(
    {required IPhotosRepository photosRepository}) {
  return FotosController(photosRepository: photosRepository);
}
