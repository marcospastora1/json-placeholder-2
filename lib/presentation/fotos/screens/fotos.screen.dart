import 'package:ekko/presentation/fotos/controller/fotos.controller.dart';
import 'package:ekko/presentation/fotos/widgets/list.fotos.widget.dart';
import 'package:ekko/presentation/shared/erro/falha.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FotosScreen extends GetView<FotosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fotos'),
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return const LoadingWidget(
              child: Text(
                'Carregando...',
              ),
            );
          } else if (controller.error.value) {
            return FalhaWidget();
          } else {
            return ListFotosWidget();
          }
        },
      ),
    );
  }
}
