import 'package:flutter/material.dart';
import 'package:the_app/models/Product.dart';
import 'package:the_app/size_config.dart';

import 'product_description.dart';
import 'product_images.dart';
import 'top_roundes_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: product),
        TopRoundesContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnseeMore: () {},
              ),
              TopRoundesContainer(
                color: Color(0xFFF6F7F9),
                child: Row(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
