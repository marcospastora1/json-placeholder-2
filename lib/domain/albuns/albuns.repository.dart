import 'package:ekko/domain/albuns/models/albuns.models.dart';
import 'package:ekko/infrastructure/dal/services/albuns/albuns.service.dart';

class AlbunsRepository {
  final AlbunsService _albunsService;

  AlbunsRepository({required AlbunsService albunsService})
      : _albunsService = albunsService;

  Future<List<AlbunsModel>> getAlbuns({required int userId}) async {
    try {
      final response = await _albunsService.getAlbuns(userId: userId);
      final models = response.map((e) => AlbunsModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
