import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/login/login.dart';

class FacebookLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      onPressed: () => BlocProvider.of<LoginBloc>(context)
          .dispatch(LoginWithFacebookPressed()),
      icon: Image.asset('assets/images/facebook.png'),
      label: Text(
        'ENTRAR CON FACEBOOK',
        style: TextStyle(
          color: Color(0xFF686868),
          fontSize: 13,
        ),
      ),
    );
  }
}
