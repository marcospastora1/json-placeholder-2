import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/dto/get_usuarios.response.dart';

class UsuariosService implements IUsuariosService {
  final IHttpConnect _connect;
  const UsuariosService(IHttpConnect connect) : _connect = connect;

  @override
  Future<List<UsuariosData>> getUsuarios() async {
    final response = await _connect.get(
      'users',
      decoder: (value) {
        var json = {'data': value};
        return GetUsuariosResponse.fromJson(json);
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
