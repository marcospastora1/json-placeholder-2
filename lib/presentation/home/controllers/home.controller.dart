import 'package:ekko/domain/usuarios/models/usuarios.models.dart';
import 'package:ekko/domain/usuarios/usuarios.repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final UsuariosRepository _repository;

  HomeController({required UsuariosRepository repository})
      : _repository = repository;

  final usuarios = <UsuariosModels>[].obs;
  final load = true.obs;
  final error = false.obs;

  @override
  void onReady() {
    loadUsuarios();
  }

  Future<void> loadUsuarios() async {
    try {
      final response = await _repository.getUsers();
      usuarios.assignAll(response);
    } catch (err) {
      error.value = true;
    } finally {
      load.value = false;
    }
  }
}
