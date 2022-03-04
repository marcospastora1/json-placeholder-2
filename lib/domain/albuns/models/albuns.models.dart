import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';
import 'package:equatable/equatable.dart';

class AlbunsModel extends Equatable {
  final int userId, id;
  final String title;

  const AlbunsModel({
    required this.id,
    required this.userId,
    required this.title,
  });

  factory AlbunsModel.fromData(AlbunsData data) {
    return AlbunsModel(
      id: data.id,
      userId: data.userId,
      title: data.title,
    );
  }

  @override
  List<Object?> get props => [userId, id, title];
}
