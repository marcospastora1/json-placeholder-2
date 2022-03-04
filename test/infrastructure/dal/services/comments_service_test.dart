import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/comentarios_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/comments/comments.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';
import 'mocks/comentarios_mocks/comentarios.mocks.dart';

void main() {
  late IHttpConnect connect;
  late IComentariosService commentsService;

  setUpAll(() {
    connect = ConnectMock();
    commentsService = CommentsService(connect);
  });

  group('Comments', () {
    test(
      'Should return a list of comments',
      () async {
        when(
          () => connect.get(
            'posts/1/comments',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => successResponse);

        final response = await commentsService.getComments(postId: 1);

        expect(response, successResponse.payload!.data);
      },
    );

    test(
      'Should throw DefaultException',
      () async {
        when(
          () => connect.get(
            'posts/1/comments',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => defaultExceptionResponse);

        final response = commentsService.getComments(postId: 1);

        expect(response, throwsA(isA<DefaultException>()));
      },
    );
  });
}
