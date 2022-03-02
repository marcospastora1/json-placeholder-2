import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';

class AlbunsModel {
  final int userId, id;
  final String title;

  AlbunsModel({
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
}
