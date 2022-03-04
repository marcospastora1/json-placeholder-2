/* import 'package:ekko/domain/core/abstractions/domain/repositories/usuarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/home/home_controller.interface.dart';
import 'package:ekko/domain/usuarios/usuarios.repository.dart';
import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';

class HomeControllerMock extends Mock implements HomeController {}

void main() {
  late IUsuariosRepository repository;
  late IHomeController homeController;
  late IUsuariosService usuariosService;

  setUp(() {
    usuariosService = UsuariosServiceMock();
    repository = UsuariosRepository(usuariosService: usuariosService);
    homeController = HomeController(repository: repository);
  });

  test('description', (){
    homeController
  }); 
} */
