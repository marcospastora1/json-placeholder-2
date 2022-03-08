import 'package:ekko/domain/core/abstractions/domain/repositories/comentarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/comentarios/comments_controller.interface.dart';
import 'package:ekko/presentation/comments/controller/comments.controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  test('Should return correct controller', () {
    final comentariosRepository = ComentariosRepositoryMock();

    final controller =
        makeComentariosController(comentariosRepository: comentariosRepository);
    final comentariosController =
        CommentsController(comentariosRepository: comentariosRepository);

    expect(controller, comentariosController);
  });
}

ICommentsController makeComentariosController(
    {required IComentariosRepository comentariosRepository}) {
  return CommentsController(comentariosRepository: comentariosRepository);
}
