import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/register/register.dart';
import 'package:elearning_20/screens/register/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: BlocProvider(
        builder: (context) => RegisterBloc(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(65.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  width: 95.8,
                  height: 95.8,
                ),
                Text(
                  'Tus Datos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 26,
                    color: Color(0xFF363636),
                  ),
                ),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(
            Icons.chevron_left,
            color: Color(0xFF343434),
          ),
          onTap: () => Navigator.pop(context),
        ),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
    );
  }
}
