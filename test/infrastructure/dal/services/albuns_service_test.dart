import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/albuns_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/albuns/albuns.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';
import 'mocks/albuns_mocks/albuns.mocks.dart';

void main() {
  late IHttpConnect connect;
  late IAlbunsService albunsService;

  setUpAll(() {
    connect = ConnectMock();
    albunsService = AlbunsService(connect);
  });

  group('Users', () {
    test(
      'Should return a list of albuns',
      () async {
        when(
          () => connect.get(
            'users/1/albums',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => successResponse);

        final response = await albunsService.getAlbuns(userId: 1);

        expect(response, successResponse.payload!.data);
      },
    );

    test(
      'Should throw DefaultException',
      () async {
        when(
          () => connect.get(
            'users/1/albums',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => defaultExceptionResponse);

        final response = albunsService.getAlbuns(userId: 1);

        expect(response, throwsA(isA<DefaultException>()));
      },
    );
  });
}
