import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/dto/get_usuarios.response.dart';

final data = GetUsuariosResponse(data: <UsuariosData>[marcos]);
final marcos = UsuariosData(
  id: 1,
  name: 'Marcos',
  email: 'marcospastora@gmail.com',
  address: endereco,
);

final endereco = EnderecoData(
  street: 'Rua Santos',
  suite: 'Apt. 5',
  city: 'Cariacity',
  zipcode: '29153-647',
);

final successResponse = Response(
  statusCode: 200,
  payload: GetUsuariosResponse(
    data: <UsuariosData>[marcos],
  ),
);
