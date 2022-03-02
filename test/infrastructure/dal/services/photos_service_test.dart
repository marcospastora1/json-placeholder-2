import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/photos_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/photos/photos.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';
import 'mocks/photos_mocks/photos.mocks.dart';

void main() {
  late IHttpConnect connect;
  late IPhotosService photosService;

  setUpAll(() {
    connect = ConnectMock();
    photosService = PhotosService(connect);
  });

  group('Photos', () {
    test(
      'Should return a list of photos',
      () async {
        when(
          () => connect.get(
            'albums/1/photos',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => successResponse);

        final response = await photosService.getPhotos(albumId: 1);

        expect(response, successResponse.payload!.data);
      },
    );

    test(
      'Should throw DefaultException',
      () async {
        when(
          () => connect.get(
            'albums/1/photos',
            decoder: any(named: 'decoder'),
          ),
        ).thenAnswer((_) async => defaultExceptionResponse);

        final response = photosService.getPhotos(albumId: 1);

        expect(response, throwsA(isA<DefaultException>()));
      },
    );
  });
}
