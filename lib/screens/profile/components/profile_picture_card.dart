import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfilePictureCard extends StatelessWidget {
  const ProfilePictureCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -16,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.white,
                    )),
                color: Color(0xFFF5F6F9),
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
