import 'package:animation_app/domain/entities/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/images/${product.image}",
              width: 100,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.description,
                      maxLines: 3,
                    ),
                    Text(
                      "Price: ${product.price}",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
