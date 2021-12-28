import 'package:flutter/material.dart';
import 'package:the_app/routes.dart';
import 'package:the_app/screens/home/home_screen.dart';
import 'package:the_app/screens/login_success/login_success_screen.dart';
import 'package:the_app/screens/splash/splash_screen.dart';
import 'package:the_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Application',
      theme: theme(),
      // home: const SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
