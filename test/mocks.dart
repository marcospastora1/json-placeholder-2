import 'package:ekko/domain/core/abstractions/domain/repositories/auth_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/albuns_service.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/auth_service.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/comentarios_service.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/photos_service.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/posts_service.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/users_service.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/storage.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/field.interface.dart';
import 'package:ekko/domain/usuarios/usuarios.repository.dart';
import 'package:ekko/presentation/shared/loading/loading.interface.dart';
import 'package:mocktail/mocktail.dart';

class AuthServiceMock extends Mock implements IAuthService {}

class AuthRepositoryMock extends Mock implements IAuthRepository {}

class LoadingControllerMock extends Mock implements ILoadingController {}

class ConnectMock extends Mock implements IHttpConnect {}

class StorageMock extends Mock implements IStorage {}

class UsuariosRepositoryMock extends Mock implements UsuariosRepository {}

class UsuariosServiceMock extends Mock implements IUsuariosService {}

class PostsServiceMock extends Mock implements IPostsService {}

class ComentariosServiceMock extends Mock implements IComentariosService {}

class PhotosServiceMock extends Mock implements IPhotosService {}

class AlbunsServiceMock extends Mock implements IAlbunsService {}

class FieldMock extends IField {
  FieldMock({required String value}) : super(value: value, validators: []);

  @override
  Stream<String?> get errorStream => throw UnimplementedError();

  @override
  bool get hasError => throw UnimplementedError();

  @override
  bool validate() => throw UnimplementedError();

  @override
  void dispose() {}
}
