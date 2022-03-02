import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'usuarios.data.g.dart';

@JsonSerializable()
class UsuariosData {
  final int id;
  final String name, email;
  final EnderecoData address;

  UsuariosData({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
  });

  factory UsuariosData.fromJson(Map<String, dynamic> json) =>
      _$UsuariosDataFromJson(json);

  Map<String, dynamic> toJson() => _$UsuariosDataToJson(this);
}
