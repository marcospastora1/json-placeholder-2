import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';

abstract class IAlbunsService {
  Future<List<AlbunsData>> getAlbuns({
    required int userId,
  });
}
