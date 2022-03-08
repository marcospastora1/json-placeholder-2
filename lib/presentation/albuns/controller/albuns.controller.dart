import 'package:ekko/domain/albuns/models/albuns.models.dart';
import 'package:ekko/domain/core/abstractions/domain/repositories/albuns_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/albuns/albuns_controller.interface.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

class AlbunsController extends GetxController
    with EquatableMixin
    implements IAlbunsController {
  final IAlbunsRepository _albunsRepository;

  AlbunsController({required IAlbunsRepository albunsRepository})
      : _albunsRepository = albunsRepository;

  final albuns = <AlbunsModel>[].obs;
  late int userId;
  late String name;
  final error = false.obs;
  final load = true.obs;

  @override
  void onInit() {
    super.onInit();
    userId = Get.arguments['id'];
    name = Get.arguments['name'];

    loadAlbuns();
  }

  @override
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

  @override
  List<Object?> get props => [_albunsRepository];
}
