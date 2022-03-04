import 'package:ekko/domain/core/abstractions/domain/repositories/usuarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/usuarios/models/usuarios.models.dart';
import 'package:ekko/domain/usuarios/usuarios.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../mocks.dart';
import 'mocks/usuarios_mock.dart';
import 'dart:core';

void main() {
  late IUsuariosRepository usuariosRepository;
  late IUsuariosService usuariosService;

  setUpAll(() {
    usuariosService = UsuariosServiceMock();
    usuariosRepository = UsuariosRepository(usuariosService: usuariosService);
  });

  test(
    'Should return a list of user models',
    () async {
      when(() => usuariosService.getUsuarios()).thenAnswer(
        (_) async => responseSuccess,
      );
      final response = await usuariosRepository.getUsers();
      //final models = [UsuariosModels.fromData(responseSuccess.first)];
      final models =
          responseSuccess.map((e) => UsuariosModels.fromData(e)).toList();

      expect(response, models);
    },
  );
}
