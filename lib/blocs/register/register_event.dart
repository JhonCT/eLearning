import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  RegisterEvent([List props = const []]) : super(props);
}

class EmailChanged extends RegisterEvent {
  final String email;

  EmailChanged({@required this.email}) : super([email]);

  @override
  String toString() => 'EmailChanged { email: $email }';
}

class PasswordChanged extends RegisterEvent {
  final String password;

  PasswordChanged({@required this.password}) : super([password]);

  @override
  String toString() => 'PasswordChanged { email: $password }';
}

class Submitted extends RegisterEvent {
  final String username;
  final String email;
  final String phone;
  final String password;
  final String confirmPassword;

  Submitted(
      {@required this.username,
      @required this.email,
      @required this.phone,
      @required this.password,
      @required this.confirmPassword})
      : super([username, email, phone, password, confirmPassword]);

  @override
  String toString() =>
      'Submitted { username: $username email: $email, phone: $phone, password: $password, confirmPassword: $confirmPassword}';
}
