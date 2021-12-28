import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFF006837);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF479C67), Color(0xFF006837)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outLineInputBorder(),
  focusedBorder: outLineInputBorder(),
  border: outLineInputBorder(),
);

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: const BorderSide(color: kTextColor),
);
}
const defaultDuration = Duration(milliseconds: 250);
//Form Error

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
const String kEmailNullError = "Please Enter Your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter Your Password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Password don't match";
const String kfirstNameError = "Please enter your first name";
const String klastNameError = "Please enter your last name";
const String kPhoneNumberError = "Please enter your phone number";
const String kAddressError = "Please enter your address";
