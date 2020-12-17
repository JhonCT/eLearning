import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback _onPressed;

  LoginButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(24.0)),
      onPressed: _onPressed,
      child: Text(
        'Entrar >',
        style: TextStyle(
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
