import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_app/constants.dart';
import 'package:the_app/models/Cart.dart';

import '../../../size_config.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
          itemCount: cartProducts.length,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(10)),
                child: Dismissible(
                  key: Key(cartProducts[index].product.id.toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        SvgPicture.asset("assets/icons/Trash.svg")
                      ],
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      cartProducts.removeAt(index);
                    });
                  },
                  child: CartItemCard(
                    cart: cartProducts[index],
                  ),
                ),
              )),
    );
  }
}
