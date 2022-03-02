import 'package:flutter/material.dart';

class TextButtonsWidget extends StatelessWidget {
  final void Function() rotaPosts, rotaAlbuns;
  final String posts, albuns;

  const TextButtonsWidget({
    required this.rotaPosts,
    required this.rotaAlbuns,
    required this.posts,
    required this.albuns,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: rotaPosts,
          child: Text(
            posts,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: rotaAlbuns,
          child: Text(
            albuns,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
