import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:ekko/presentation/home/widgets/ListUsers.widget.dart';
import 'package:ekko/presentation/shared/erro/falha.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
      ),
      body: Obx(
        () {
          if (controller.error.value) {
            return FalhaWidget();
          } else if (controller.load.value) {
            return const LoadingWidget(
              child: Text(
                'Carregando...',
              ),
            );
          } else {
            return ListUsersWidget();
          }
        },
      ),
    );
  }
}
