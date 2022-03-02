import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/albuns/controller/albuns.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListAlbunsWidget extends GetView<AlbunsController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.albuns.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () => Get.toNamed(
              Routes.fotos,
              arguments: {
                'id': controller.albuns[index].id,
              },
            ),
            title: Text(
              controller.albuns[index].title.capitalizeFirst!,
            ),
            leading: const Icon(Icons.photo),
          ),
        );
      },
    );
  }
}
