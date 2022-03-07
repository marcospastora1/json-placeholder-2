import 'package:ekko/domain/core/abstractions/domain/repositories/albuns_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/albuns/albuns_controller.interface.dart';
import 'package:ekko/presentation/albuns/controller/albuns.controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  test('Should return correct controller', () {
    final albunsRepository = AlbunsRepositoryMock();

    final controller = makePostsController(albunsRepository: albunsRepository);
    final albunsController =
        AlbunsController(albunsRepository: albunsRepository);

    expect(controller, albunsController);
  });
}

IAlbunsController makePostsController(
    {required IAlbunsRepository albunsRepository}) {
  return AlbunsController(albunsRepository: albunsRepository);
}
