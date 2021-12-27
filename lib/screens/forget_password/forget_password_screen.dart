import 'package:flutter/material.dart';
import 'package:the_app/screens/forget_password/components/body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  static String routeName = '/forget_passord';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body: Body(),
    );
  }
}
