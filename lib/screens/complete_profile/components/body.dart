import 'package:flutter/material.dart';
import 'package:the_app/constants.dart';
import 'package:the_app/size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            CompleteProfileForm(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const Text(
              "By continuing your confirm that you agree \nwith our Terms and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
