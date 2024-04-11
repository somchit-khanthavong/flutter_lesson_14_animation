import 'package:animation_app/data/product_items.dart';
import 'package:animation_app/presentation/widgets/animation_widget.dart';
import 'package:animation_app/presentation/widgets/product_box.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title, required this.animation});

  final String title;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Listing",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          // built-in widget
          FadeTransition(
            opacity: animation,
            child: ProductBox(product: products[0]),
          ),
          SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: const Offset(0, 0),
              ),
            ),
            child: ProductBox(product: products[1]),
          ),
          RotationTransition(
            turns: animation,
            child: ProductBox(product: products[2]),
          ),
          ScaleTransition(
            scale: animation,
            alignment: Alignment.center,
            child: ProductBox(product: products[3]),
          ),
          // our custom widget
          MyAnimatedWidget(
            childAnimatedWidget: ProductBox(product: products[4]),
            animation: animation,
          ),
        ],
      ),
    );
  }
}
