import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';
import 'package:equatable/equatable.dart';

class UsuariosModels extends Equatable {
  final int id;
  final String name, email;
  final EnderecoData address;

  const UsuariosModels({
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

  @override
  List<Object?> get props => [id, name, email];
}
