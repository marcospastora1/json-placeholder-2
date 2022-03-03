import 'package:ekko/domain/core/abstractions/domain/repositories/usuarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/usuarios/models/usuarios.models.dart';

class UsuariosRepository implements IUsuariosRepository {
  final IUsuariosService _usuariosService;
  const UsuariosRepository({required IUsuariosService usuariosService})
      : _usuariosService = usuariosService;

  @override
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
