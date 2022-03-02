import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/menu/controller/menu.controller.dart';
import 'package:ekko/presentation/menu/widgets/TextButtons.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: TextButtonsWidget(
          posts: 'Posts',
          albuns: 'Albuns',
          rotaPosts: () =>
              Get.toNamed(Routes.posts, arguments: controller.arguments),
          rotaAlbuns: () => Get.toNamed(
            Routes.albuns,
            arguments: controller.arguments,
          ),
        ),
      ),
    );
  }
}
