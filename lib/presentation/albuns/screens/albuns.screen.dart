import 'package:ekko/presentation/albuns/controller/albuns.controller.dart';
import 'package:ekko/presentation/albuns/widgets/list.albuns.dart';
import 'package:ekko/presentation/shared/erro/falha.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbunsScreen extends GetView<AlbunsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albuns de ${controller.name}'),
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
            return ListAlbunsWidget();
          }
        },
      ),
    );
  }
}
