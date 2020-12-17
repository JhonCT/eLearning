import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:elearning_20/components/facebook_login_button.dart';
import 'package:elearning_20/components/google_login_button.dart';

class ButtonsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: GoogleLoginButton(),
        ),
        Container(
          child: FacebookLoginButton(),
        ),
      ],
    );
  }
}
