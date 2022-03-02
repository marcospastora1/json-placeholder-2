import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/posts/controller/posts.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListPostsWidget extends GetView<PostsController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.posts.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () => Get.toNamed(
              Routes.comments,
              arguments: {'id': controller.posts[index].id},
            ),
            title: Text(
              controller.posts[index].title.capitalizeFirst!,
            ),
            subtitle: Text(
              controller.posts[index].body.capitalizeFirst!,
            ),
          ),
        );
      },
    );
  }
}
