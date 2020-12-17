import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:elearning_20/blocprovs/firebase_user_repository.dart';
import 'package:elearning_20/blocs/login/login.dart';
import 'package:elearning_20/utils/validators.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  FirebaseUserRepository _firebaseUserRepository = FirebaseUserRepository();

  @override
  LoginState get initialState => LoginState.empty();

  @override
  Stream<LoginState> transformEvents(Stream<LoginEvent> events,
      Stream<LoginState> Function(LoginEvent event) next) {
    final observableStream = events as Observable<LoginEvent>;
    final nonDebounceStream = observableStream.where((event) {
      return (event is! EmailChanged && event is! PasswordChanged);
    });
    final debounceStream = observableStream.where((event) {
      return (event is EmailChanged || event is PasswordChanged);
    }).debounceTime(Duration(milliseconds: 300));
    return super
        .transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is EmailChanged) {
      yield currentState.update(
        isEmailValid: Validators.isValidEmail(event.email),
      );
    } else if (event is PasswordChanged) {
      yield currentState.update(
        isPasswordValid: Validators.isValidPassword(event.password),
      );
    } else if (event is LoginWithGooglePressed) {
      try {
        await _firebaseUserRepository.signInWithGoogle();
        await _firebaseUserRepository.getUser();
        yield LoginState.success();
      } catch (error) {
        print(error);
        yield LoginState.failure();
      }
    } else if (event is LoginWithFacebookPressed) {
      try {
        await _firebaseUserRepository.signInWithFacebook();
        yield LoginState.success();
      } catch (_) {
        yield LoginState.failure();
      }
    } else if (event is LoginWithCredentialsPressedToState) {
      yield LoginState.loading();
      try {
        await _firebaseUserRepository.signInWithCredentials(
            email: event.email, password: event.password);
        yield LoginState.success();
      } catch (_) {
        yield LoginState.failure();
      }
    }
  }
}
