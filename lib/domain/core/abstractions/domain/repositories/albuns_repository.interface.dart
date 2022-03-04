import 'package:ekko/domain/albuns/models/albuns.models.dart';

abstract class IAlbunsRepository {
  Future<List<AlbunsModel>> getAlbuns({required int userId});
}
