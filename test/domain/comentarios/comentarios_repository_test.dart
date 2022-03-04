import 'package:ekko/domain/comentarios/comentarios.repository.dart';
import 'package:ekko/domain/comentarios/models/comentarios.models.dart';
import 'package:ekko/domain/core/abstractions/domain/repositories/comentarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/comentarios_service.interface.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../mocks.dart';
import 'mocks/comentarios_mocks.dart';

void main() {
  late IComentariosRepository comentariosRepository;
  late IComentariosService comentariosService;

  setUpAll(() {
    comentariosService = ComentariosServiceMock();
    comentariosRepository =
        ComentariosRepository(commentsService: comentariosService);
  });

  test('Should return a list of comments models', () async {
    const postId = 1;

    when(() => comentariosService.getComments(postId: postId))
        .thenAnswer((_) async => responseSuccess);

    final response = await comentariosRepository.getComments(postId: postId);
    final models = [ComentariosModel.fromData(responseSuccess.first)];

    expect(response, models);
  });
}
