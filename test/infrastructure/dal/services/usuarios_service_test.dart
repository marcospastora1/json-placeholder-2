import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/dto/get_usuarios.response.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/usuarios.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';
import 'mocks/usuarios_mocks/usuarios.mocks.dart';

void main() {
  late IHttpConnect connect;
  late IUsuariosService usuariosService;

  setUpAll(() {
    connect = ConnectMock();
    usuariosService = UsuariosService(connect);
  });

  group('Users', () {
    test(
      'should return a list of users',
      () async {
        when(
          () => connect.get<GetUsuariosResponse>(
            'users',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => successResponse);

        final response = await usuariosService.getUsuarios();

        expect(response, successResponse.payload!.data);
      },
    );

    test(
      'Should throw DefaultException',
      () async {
        when(
          () => connect.get(
            'users',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => defaultExceptionResponse);

        final response = usuariosService.getUsuarios();

        expect(response, throwsA(isA<DefaultException>()));
      },
    );
  });
}
