import 'package:flutter/material.dart';
import 'package:the_app/components/custom_bottom_nav_bar.dart';
import 'package:the_app/enums.dart';
import 'package:the_app/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
