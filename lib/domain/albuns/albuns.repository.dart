import 'package:ekko/domain/albuns/models/albuns.models.dart';
import 'package:ekko/domain/core/abstractions/domain/repositories/albuns_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/albuns_service.interface.dart';

class AlbunsRepository extends IAlbunsRepository {
  final IAlbunsService _albunsService;

  AlbunsRepository({required IAlbunsService albunsService})
      : _albunsService = albunsService;

  @override
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
