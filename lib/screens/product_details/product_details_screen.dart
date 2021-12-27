// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:the_app/models/Product.dart';
import 'package:the_app/screens/product_details/components/body.dart';

import 'components/custom_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);
  static String routeName = 'product_details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: arguments.product.rating,
        ),
      ),
      body: Body(product: arguments.product,),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({
    required this.product,
  });
}
