import 'package:ekko/domain/core/abstractions/domain/repositories/usuarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/home/home_controller.interface.dart';
import 'package:ekko/domain/usuarios/usuarios.repository.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';
import 'mocks/usuarios_mock.dart';

class HomeControllerMock extends Mock implements HomeController {}

void main() {
  late IHttpConnect connect;
  late IUsuariosRepository repository;
  late IHomeController homeController;
  late IUsuariosService usuariosService;

  setUpAll(() {
    connect = ConnectMock();
    usuariosService = UsuariosServiceMock();
    repository = UsuariosRepository(usuariosService: usuariosService);
    homeController = HomeController(repository: repository);
  });

  test('Should return list of users', () async {
    when(
      () => connect.get('users', decoder: any(named: 'decoder')),
    ).thenAnswer((_) async => responseSucces);

    when(
      () => usuariosService.getUsuarios(),
    ).thenAnswer(
      (_) async => responseSucces.payload!.data,
    );

    when(() => repository.getUsers()).thenAnswer(
      (_) async => responseSuccessModels,
    );
  });
}
