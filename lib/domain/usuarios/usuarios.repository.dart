import 'package:ekko/domain/usuarios/models/usuarios.models.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/usuarios.service.dart';

class UsuariosRepository {
  final UsuariosService _usuariosService;
  const UsuariosRepository({required UsuariosService usuariosService})
      : _usuariosService = usuariosService;

  Future<List<UsuariosModels>> getUsers() async {
    try {
      final response = await _usuariosService.getUsuarios();
      final models = response.map((e) => UsuariosModels.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
