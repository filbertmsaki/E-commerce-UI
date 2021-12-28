import 'package:flutter/material.dart';
import 'package:the_app/components/default_button.dart';
import 'package:the_app/models/Product.dart';
import 'package:the_app/screens/cart/cart_screen.dart';
import 'package:the_app/screens/product_details/components/color_dots.dart';

import '../../../size_config.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_roundes_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundesContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () => Navigator.pushNamed(
                              context, CartScreen.routeName),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
