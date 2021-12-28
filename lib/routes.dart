import 'package:flutter/material.dart';
import 'package:the_app/screens/cart/cart_screen.dart';
import 'package:the_app/screens/complete_profile/complete_profile.dart';
import 'package:the_app/screens/forget_password/forget_password_screen.dart';
import 'package:the_app/screens/home/home_screen.dart';
import 'package:the_app/screens/login_success/login_success_screen.dart';
import 'package:the_app/screens/otp/otp_screen.dart';
import 'package:the_app/screens/product_details/product_details_screen.dart';
import 'package:the_app/screens/profile/profile_screen.dart';
import 'package:the_app/screens/sign_in/sign_in_screen.dart';
import 'package:the_app/screens/sign_up/sign_up_screen.dart';
import 'package:the_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
