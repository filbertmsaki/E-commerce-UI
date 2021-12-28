import 'package:flutter/material.dart';
import 'package:the_app/screens/profile/components/profile_picture_card.dart';

import 'profile_menu_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePictureCard(),
        const SizedBox(height: 20),
        ProfileMenuCard(
          text: "My Account",
          icon: "assets/icons/User Icon.svg",
          press: () {},
        ),
        ProfileMenuCard(
          text: "Notifications",
          icon: "assets/icons/Bell.svg",
          press: () {},
        ),
        ProfileMenuCard(
          text: "Settings",
          icon: "assets/icons/Settings.svg",
          press: () {},
        ),
        ProfileMenuCard(
          text: "Help Center",
          icon: "assets/icons/Question mark.svg",
          press: () {},
        ),
        ProfileMenuCard(
          text: "Log Out",
          icon: "assets/icons/Log out.svg",
          press: () {},
        ),
      ],
    );
  }
}
