import 'package:flutter/material.dart';

import 'circular_loading.widget.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;
  const LoadingWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          child,
          CircularLoadingWidget(),
        ],
      ),
    );
  }
}
