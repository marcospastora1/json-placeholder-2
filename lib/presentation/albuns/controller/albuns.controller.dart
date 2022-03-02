import 'package:ekko/domain/albuns/albuns.repository.dart';
import 'package:ekko/domain/albuns/models/albuns.models.dart';
import 'package:get/get.dart';

class AlbunsController extends GetxController {
  final AlbunsRepository _albunsRepository;

  AlbunsController({required AlbunsRepository albunsRepository})
      : _albunsRepository = albunsRepository;

  final albuns = <AlbunsModel>[].obs;
  final userId = Get.arguments['id'];
  final name = Get.arguments['name'];
  final error = false.obs;
  final load = true.obs;

  @override
  void onReady() {
    loadAlbuns();
  }

  Future<void> loadAlbuns() async {
    try {
      final response = await _albunsRepository.getAlbuns(userId: userId);
      albuns.assignAll(response);
    } catch (err) {
      error.value = true;
    } finally {
      load.value = false;
    }
  }
}
