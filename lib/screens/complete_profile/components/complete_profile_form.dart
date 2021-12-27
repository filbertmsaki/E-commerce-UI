import 'package:flutter/material.dart';
import 'package:the_app/components/custom_surfix_icon.dart';
import 'package:the_app/components/default_button.dart';
import 'package:the_app/components/form_error.dart';
import 'package:the_app/screens/otp/otp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstname;
  late String lastname;
  late String phonenumber;
  late String address;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            buildFirstNameFormField(),
            sizeBtn(),
            buildLastNameFormField(),
            sizeBtn(),
            buildPhoneNumberFormField(),
            sizeBtn(),
            buildAddressFormField(),
            sizeBtn(),
            FormError(errors: errors),
            sizeBtn(),
            DefaultButton(
                text: "Complete",
                press: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, OtpScreen.routeName);
                  }
                })
          ],
        ),
      ),
    );
  }

  SizedBox sizeBtn() {
    return SizedBox(
      height: getProportionateScreenHeight(20),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => firstname = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kfirstNameError)) {
          removeError(error: kfirstNameError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kfirstNameError)) {
          addError(error: kfirstNameError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customerSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => lastname = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(klastNameError)) {
          removeError(error: klastNameError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(klastNameError)) {
          addError(error: klastNameError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customerSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberError)) {
          removeError(error: kPhoneNumberError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberError)) {
          addError(error: kPhoneNumberError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customerSurffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressError)) {
          removeError(error: kAddressError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressError)) {
          addError(error: kAddressError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: customerSurffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }
}
