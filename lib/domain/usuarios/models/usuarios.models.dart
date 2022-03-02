import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';

class UsuariosModels {
  final int id;
  final String name, email;
  final EnderecoData address;

  UsuariosModels({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
  });

  factory UsuariosModels.fromData(UsuariosData data) {
    return UsuariosModels(
      id: data.id,
      name: data.name,
      email: data.email,
      address: data.address,
    );
  }
}
