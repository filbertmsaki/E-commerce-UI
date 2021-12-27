import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_app/constants.dart';
import 'package:the_app/models/Product.dart';
import 'package:the_app/screens/home/components/section_title.dart';
import 'package:the_app/size_config.dart';
import 'category_banner.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import '../../../components/product_card.dart';
import 'popular_products.dart';
import 'special_offer_banner.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            sizeBtn(),
            HomeHeader(),
            sizeBtn(),
            DiscountBanner(),
            sizeBtn(),
            CategoryBanner(),
            sizeBtn(),
            SpecialOfferBanner(),
            sizeBtn(),
            PopularProducts(),
            sizeBtn(),
          ],
        ),
      ),
    );
  }

  SizedBox sizeBtn() {
    return SizedBox(
      height: getProportionateScreenHeight(20),
    );
  }
}
