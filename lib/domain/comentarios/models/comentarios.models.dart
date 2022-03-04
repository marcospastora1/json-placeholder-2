import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';
import 'package:equatable/equatable.dart';

class ComentariosModel extends Equatable {
  final int postId, id;
  final String name, email, body;

  const ComentariosModel({
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

  @override
  List<Object?> get props => [postId, id, name, email, body];
}
