import 'package:ekko/domain/core/abstractions/domain/repositories/usuarios_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/home/home_controller.interface.dart';
import 'package:ekko/domain/usuarios/models/usuarios.models.dart';
import 'package:get/get.dart';

class HomeController extends GetxController implements IHomeController {
  final IUsuariosRepository _repository;

  HomeController({required IUsuariosRepository repository})
      : _repository = repository;

  final usuarios = <UsuariosModels>[].obs;
  final load = true.obs;
  final error = false.obs;

  @override
  void onReady() {
    loadUsuarios();
  }

  @override
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
