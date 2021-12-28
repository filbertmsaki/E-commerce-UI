import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'carousel_banner.dart';
import 'category_banner.dart';
import 'discount_banner.dart';
import 'home_header.dart';
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
            // CarouselSliderCard(),
            // CarouselSliderDataFound(carouselList: carousel),
            CarouselBanner(),
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
