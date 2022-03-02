import 'package:ekko/presentation/posts/controller/posts.controller.dart';
import 'package:ekko/presentation/posts/widgets/list.posts.widget.dart';
import 'package:ekko/presentation/shared/erro/falha.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsScreen extends GetView<PostsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts de ${controller.name}'),
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
            return ListPostsWidget();
          }
        },
      ),
    );
  }
}
