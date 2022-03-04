import 'package:ekko/domain/core/abstractions/domain/repositories/fotos_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/photos_service.interface.dart';
import 'package:ekko/domain/fotos/fotos.repository.dart';
import 'package:ekko/domain/fotos/models/fotos.models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';
import 'mocks/fotos_mocks.dart';

void main() {
  late IPhotosRepository fotosRepository;
  late IPhotosService fotosService;

  setUpAll(() {
    fotosService = PhotosServiceMock();
    fotosRepository = PhotosRepository(photosService: fotosService);
  });

  test('Should return a list of photos models', () async {
    const albumId = 1;
    when(
      () => fotosService.getPhotos(albumId: albumId),
    ).thenAnswer(
      (_) async => responseSuccess,
    );

    final response = await fotosRepository.getPhotos(albumId: albumId);
    //final models = [FotosModel.fromData(responseSuccess.first)];
    final models = responseSuccess.map((e) => FotosModel.fromData(e)).toList();

    expect(response, models);
  });
}
