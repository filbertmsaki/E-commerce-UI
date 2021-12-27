import 'package:flutter/material.dart';
import 'package:the_app/components/product_card.dart';
import 'package:the_app/models/Product.dart';
import 'package:the_app/screens/product_details/product_details_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Products",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                products.length,
                (index) => ProductCard(
                  product: products[index],
                  press: () => Navigator.pushNamed(
                    context,
                    ProductDetailsScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: products[index]),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
