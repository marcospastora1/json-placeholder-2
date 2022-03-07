import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/domain/usuarios/models/usuarios.models.dart';
import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';
import 'package:ekko/infrastructure/dal/services/usuarios/dto/get_usuarios.response.dart';

final responseSuccessModels = <UsuariosModels>[
  UsuariosModels(
    id: 1,
    name: 'Marcos',
    email: 'marcospastora@gmail.com',
    address: EnderecoData(
      street: 'Rua 1',
      suite: 'suite',
      city: 'Cariacity',
      zipcode: '29152-001',
    ),
  ),
];

final responseSuccessData = <UsuariosData>[
  UsuariosData(
    id: 1,
    name: 'Marcos',
    email: 'marcospastora@gmail.com',
    address: EnderecoData(
      street: 'Rua 1',
      suite: 'suite',
      city: 'Cariacity',
      zipcode: '29152-001',
    ),
  ),
];

final responseSucces = Response(
  statusCode: 200,
  payload: GetUsuariosResponse(
    data: <UsuariosData>[
      UsuariosData(
        id: 1,
        name: 'Marcos',
        email: 'marcospastora@gmail.com',
        address: EnderecoData(
          street: 'Rua 1',
          suite: 'suite',
          city: 'Cariacity',
          zipcode: '29152-001',
        ),
      ),
    ],
  ),
);
