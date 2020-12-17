import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/authentication/authentication.dart';
import 'package:elearning_20/blocs/authentication/authentication_event.dart';
import 'package:elearning_20/blocs/register/register.dart';

import 'register_button.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  RegisterBloc _registerBloc;

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isRegisterButtonEnabled(RegisterState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _registerBloc = BlocProvider.of<RegisterBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Registering...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(context).dispatch(LoggedIn());
          Navigator.of(context).pop();
        }
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Registration Failure'),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
      },
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  style: TextStyle(
                    color: Colors.black,
                    height: 3,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 17.1),
                      child: Icon(
                        Icons.call,
                        size: 18.11,
                      ),
                    ),
                    prefixText: '+51   ',
                    prefixStyle: TextStyle(
                      color: Colors.black,
                    ),
                    hintText: 'Número de celular',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _phoneController,
                  showCursor: false,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (_) {
                    return !state.isPasswordValid ? 'Invalid Phone' : null;
                  },
                ),
                TextFormField(
                  style:
                      TextStyle(color: Colors.black, fontSize: 14.0, height: 3),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 17.1),
                      child: Icon(
                        Icons.person_outline,
                        size: 18.11,
                      ),
                    ),
                    hintText: 'Nombre',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _usernameController,
                  showCursor: false,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (_) {
                    return !state.isEmailValid ? 'Invalid Username' : null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style:
                      TextStyle(color: Colors.black, fontSize: 14.0, height: 3),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 17.1),
                      child: Icon(
                        Icons.mail_outline,
                        size: 18.11,
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _emailController,
                  validator: (_) {
                    return !state.isEmailValid ? 'Invalid Email' : null;
                  },
                  showCursor: false,
                  autovalidateMode: AutovalidateMode.always,
                ),
                TextFormField(
                  obscureText: true,
                  style:
                      TextStyle(color: Colors.black, fontSize: 14.0, height: 3),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 17.1),
                      child: Icon(
                        Icons.lock_outline,
                        size: 18.11,
                      ),
                    ),
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _passwordController,
                  showCursor: false,
                  autovalidateMode: AutovalidateMode.always,
                ),
                TextFormField(
                  obscureText: true,
                  style:
                      TextStyle(color: Colors.black, fontSize: 14.0, height: 3),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 17.1),
                      child: Icon(
                        Icons.lock_outline,
                        size: 18.11,
                      ),
                    ),
                    hintText: 'Repetir Contraseña',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _confirmPasswordController,
                  showCursor: false,
                  autovalidateMode: AutovalidateMode.always,
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.6),
                  child: ButtonTheme(
                    minWidth: 202.56,
                    height: 52.89,
                    child: RegisterButton(
                      onPressed: isRegisterButtonEnabled(state)
                          ? _onFormSubmitted
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _registerBloc.dispatch(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _registerBloc.dispatch(
      PasswordChanged(password: _passwordController.text),
    );
  }

  void _onFormSubmitted() {
    _registerBloc.dispatch(
      Submitted(
        username: _usernameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        confirmPassword: _confirmPasswordController.text,
        phone: _phoneController.text,
      ),
    );
  }
}
