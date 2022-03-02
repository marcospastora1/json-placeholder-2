import 'package:ekko/presentation/comments/controller/comments.controller.dart';
import 'package:ekko/presentation/comments/widgets/list.comments.widget.dart';
import 'package:ekko/presentation/shared/erro/falha.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentsScreen extends GetView<CommentsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comentários'),
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
            return ListCommentsWidget();
          }
        },
      ),
    );
  }
}
