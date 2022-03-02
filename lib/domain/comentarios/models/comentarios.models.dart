import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';

class ComentariosModel {
  final int postId, id;
  final String name, email, body;

  ComentariosModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory ComentariosModel.fromData(ComentariosData data) {
    return ComentariosModel(
      postId: data.postId,
      id: data.id,
      name: data.name,
      email: data.email,
      body: data.body,
    );
  }
}
