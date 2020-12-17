import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/authentication/authentication.dart';
import 'package:elearning_20/blocs/login/login.dart';
import 'package:elearning_20/components/login_button.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginBloc _loginBloc;

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('LoginFailure'),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('LoginIn...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(context).dispatch(LoggedIn());
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        bloc: _loginBloc,
        builder: (
          BuildContext context,
          LoginState state,
        ) {
          return Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    height: 3,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 17.1),
                      child: Icon(
                        Icons.person_outline,
                        size: 18.11,
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _emailController,
                  showCursor: false,
                  validator: (String value) {
                    return value.contains('@')
                        ? 'No es un correo válido'
                        : null;
                  },
                  cursorColor: Colors.black,
                ),
                TextFormField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    height: 3.3,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 35.4, bottom: 17.1),
                      child: Icon(
                        Icons.lock,
                        size: 18.11,
                      ),
                    ),
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  controller: _passwordController,
                  cursorColor: Colors.black,
                  obscureText: true,
                  showCursor: false,
                ),
                Container(
                  margin: EdgeInsets.only(top: 35.4, bottom: 41.1),
                  child: Text(
                    '¿Se te olvido la contraseña?',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                ButtonTheme(
                  minWidth: 202.56,
                  height: 52.89,
                  child: LoginButton(
                    onPressed:
                        isLoginButtonEnabled(state) ? _onFormSubmitted : null,
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
    _loginBloc.dispatch(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _loginBloc.dispatch(
      PasswordChanged(password: _passwordController.text),
    );
  }

  void _onFormSubmitted() {
    _loginBloc.dispatch(
      LoginWithCredentialsPressedToState(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }
}
