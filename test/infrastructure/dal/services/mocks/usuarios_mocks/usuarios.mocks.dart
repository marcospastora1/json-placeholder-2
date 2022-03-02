import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/dto/get_usuarios.response.dart';

final successResponse = Response(
  statusCode: 200,
  payload: GetUsuariosResponse(
    data: <UsuariosData>[
      UsuariosData(
        id: 1,
        name: 'Marcos',
        email: 'marcospastora@gmail.com',
        address: EnderecoData(
          street: 'Rua dos bobos',
          suite: 'Apt. 0',
          city: 'Cariacity',
          zipcode: '29153-647',
        ),
      ),
    ],
  ),
);

final defaultExceptionResponse = Response(
  statusCode: 400,
  payload: GetUsuariosResponse(
    data: <UsuariosData>[
      UsuariosData(
        id: 1,
        name: 'Marcos',
        email: 'marcospastora@gmail.com',
        address: EnderecoData(
          street: 'Rua dos bobos',
          suite: 'Apt. 0',
          city: 'Cariacity',
          zipcode: '29153-647',
        ),
      ),
    ],
  ),
);
