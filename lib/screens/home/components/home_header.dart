import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field_input.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchFieldInput(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numberOfIterms: 0,
            press: () {},
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numberOfIterms: 4,
            press: () {},
          ),
        ],
      ),
    );
  }
}
