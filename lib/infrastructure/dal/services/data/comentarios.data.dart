import 'package:json_annotation/json_annotation.dart';

part 'comentarios.data.g.dart';

@JsonSerializable()
class ComentariosData {
  final int id;
  final int postId;
  final String name;
  final String email;
  final String body;

  ComentariosData({
    required this.id,
    required this.postId,
    required this.name,
    required this.body,
    required this.email,
  });

  factory ComentariosData.fromJson(Map<String, dynamic> json) =>
      _$ComentariosDataFromJson(json);

  Map<String, dynamic> toJson() => _$ComentariosDataToJson(this);
}
