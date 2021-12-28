import 'package:flutter/material.dart';
import 'package:the_app/components/custom_bottom_nav_bar.dart';
import 'package:the_app/enums.dart';

import 'package:the_app/screens/home/components/body.dart';

import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
