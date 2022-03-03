import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListUsersWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.usuarios.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(controller.usuarios[index].name),
            subtitle: Text(controller.usuarios[index].email),
            onTap: () => Get.toNamed(
              Routes.menu,
              arguments: {
                'id': controller.usuarios[index].id,
                'name': controller.usuarios[index].name,
              },
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () => Get.defaultDialog(
                title: 'Address',
                middleText:
                    'City: ${controller.usuarios[index].address.street}\nSuite: ${controller.usuarios[index].address.suite}\nCity: ${controller.usuarios[index].address.city} \nZipcode: ${controller.usuarios[index].address.zipcode}',
                textCancel: 'Sair',
              ),
            ),
          ),
        );
      },
    );
  }
}
