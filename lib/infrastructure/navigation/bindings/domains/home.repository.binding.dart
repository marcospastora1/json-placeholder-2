import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/usuarios/usuarios.repository.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/usuarios.service.dart';
import 'package:get/get.dart';

class HomeRepositoryBinding {
  late UsuariosRepository _usuariosRepository;
  UsuariosRepository get repository => _usuariosRepository;

  HomeRepositoryBinding() {
    final getConnect = Get.find<IHttpConnect>();
    final usuarioService = UsuariosService(getConnect);
    _usuariosRepository = UsuariosRepository(
      usuariosService: usuarioService,
    );
  }
}
