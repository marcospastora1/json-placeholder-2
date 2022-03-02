import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';

abstract class IUsuariosService {
  Future<List<UsuariosData>> getUsuarios();
}
