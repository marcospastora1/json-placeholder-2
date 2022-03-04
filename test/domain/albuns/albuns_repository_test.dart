import 'package:ekko/domain/albuns/albuns.repository.dart';
import 'package:ekko/domain/albuns/models/albuns.models.dart';
import 'package:ekko/domain/core/abstractions/domain/repositories/albuns_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/albuns_service.interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';
import 'mocks/albuns_mocks.dart';

void main() {
  late IAlbunsService albunsService;
  late IAlbunsRepository albunsRepository;

  setUpAll(() {
    albunsService = AlbunsServiceMock();
    albunsRepository = AlbunsRepository(albunsService: albunsService);
  });

  test('Should return a list of albuns models', () async {
    const userId = 1;

    when(() => albunsService.getAlbuns(userId: userId)).thenAnswer(
      (_) async => responseSucess,
    );

    final response = await albunsRepository.getAlbuns(userId: userId);
    //final models = [AlbunsModel.fromData(responseSucess.first)];
    final models = responseSucess.map((e) => AlbunsModel.fromData(e)).toList();

    expect(response, models);
  });
}
