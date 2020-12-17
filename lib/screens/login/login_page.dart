import 'package:elearning_20/components/facebook_login_button.dart';
import 'package:elearning_20/components/google_login_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/login/login_bloc.dart';
import 'package:elearning_20/screens/register/register_page.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: BlocProvider<LoginBloc>(
        builder: (context) => LoginBloc(),
        child: Padding(
          padding: const EdgeInsets.all(65.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 95.0,
                height: 95.0,
              ),
              SizedBox(
                height: 50,
              ),
              LoginForm(),
              SizedBox(
                height: 50,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '¿No tienes una cuenta? Regístrate',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.pushNamed(context, '/register'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GoogleLoginButton(),
              FacebookLoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
