import 'package:ekko/infrastructure/dal/services/data/endereco.data.dart';
import 'package:ekko/infrastructure/dal/services/data/usuarios.data.dart';

final responseSuccess = <UsuariosData>[
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
];
