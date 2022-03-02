import 'package:ekko/presentation/comments/controller/comments.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCommentsWidget extends GetView<CommentsController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.comments.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(controller.comments[index].name.capitalizeFirst!),
            subtitle: Text(controller.comments[index].body.capitalizeFirst!),
          ),
        );
      },
    );
  }
}
