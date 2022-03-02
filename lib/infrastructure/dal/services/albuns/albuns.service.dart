import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/albuns_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/albuns/dto/get_albuns.response.dart';
import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';

class AlbunsService implements IAlbunsService {
  final IHttpConnect _connect;

  AlbunsService(IHttpConnect connect) : _connect = connect;

  @override
  Future<List<AlbunsData>> getAlbuns({required int userId}) async {
    final response = await _connect.get(
      'users/$userId/albums',
      decoder: (value) {
        var json = {'data': value};
        return GetAlbunsResponse.fromJson(json);
      },
    );
    if (response.success) {
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar os dados');
      }
    }
  }
}
