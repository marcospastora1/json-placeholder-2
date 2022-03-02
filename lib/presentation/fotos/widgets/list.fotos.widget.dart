import 'package:ekko/presentation/fotos/controller/fotos.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListFotosWidget extends GetView<FotosController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.fotos.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () => Get.dialog(
              Center(
                child: Image.network(controller.fotos[index].url),
              ),
            ),
            title: Text(
              controller.fotos[index].title.capitalizeFirst!,
            ),
            leading: Image.network(
              controller.fotos[index].thumbnailUrl,
            ),
          ),
        );
      },
    );
  }
}
