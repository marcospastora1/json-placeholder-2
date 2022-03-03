import 'package:ekko/domain/usuarios/models/usuarios.models.dart';

abstract class IUsuariosRepository {
  Future<List<UsuariosModels>> getUsers();
}
