import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_usuarios.response.g.dart';

@JsonSerializable()
class GetUsuariosResponse {
  final List<UsuariosData> data;

  GetUsuariosResponse({required this.data});

  factory GetUsuariosResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUsuariosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUsuariosResponseToJson(this);
}
