import 'package:elearning_20/screens/register/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/authentication/authentication.dart';
import 'package:elearning_20/components/components.dart';
import 'package:elearning_20/screens/home/home.dart';
import 'package:elearning_20/screens/login/login_page.dart';
import 'package:elearning_20/screens/splash/splash.dart';
import 'package:elearning_20/theme/theme.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(
    BlocProvider<AuthenticationBloc>(
      builder: (context) {
        return AuthenticationBloc()..dispatch(AppStarted());
      },
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationAuthenticated) {
            globals.user = state.user;
            return HomePage(user: globals.user);
          } else if (state is AuthenticationUnauthenticated) {
            return LoginPage();
          } else if (state is AuthenticationLoading) {
            return LoadingIndicator();
          } else if (state is AuthenticationUninitialized) {
            return SplashPage();
          } else {
            return Container(
              child: Text('faild application!!'),
            );
          }
        },
      ),
      routes: {
        '/home': (context) => HomePage(user: globals.user),
        '/login': (context) => LoginPage(),
        '/splash': (context) => SplashPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
