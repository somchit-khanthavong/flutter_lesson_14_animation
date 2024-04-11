import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatelessWidget {
  const MyAnimatedWidget({
    super.key,
    required this.childAnimatedWidget,
    required this.animation,
  });

  final Widget childAnimatedWidget;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) => Opacity(
          opacity: animation.value,
          child: childAnimatedWidget,
        ),
      ),
    );
  }
}
