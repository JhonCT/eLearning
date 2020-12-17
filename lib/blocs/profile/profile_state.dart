import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class ProfileState extends Equatable{
  ProfileState([List props = const []]) : super(props);
}

class ProfileInitial extends ProfileState {
  @override
  String toString() => 'ProfileInitial';
}

class ProfileLoading extends ProfileState {
  @override
  String toString() => 'ProfileLoading';
}

class ProfileFailure extends ProfileState {
  final String error;

  ProfileFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'ProfileFailure { error: $error }';
}

class OverviewInitial extends ProfileState {
  @override
  String toString() => 'OverviewInitial';
}

class OverviewLoading extends ProfileState {
  @override
  String toString() => 'OverviewLoading';
}

class OverviewFailure extends ProfileState {
  final String error;

  OverviewFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'OverviewFailure { error: $error }';
}

class CoursesInitial extends ProfileState {
  @override
  String toString() => 'CoursesInitial';
}

class CoursesLoading extends ProfileState {
  @override
  String toString() => 'CoursesLoading';
}

class CoursesFailure extends ProfileState {
  final String error;

  CoursesFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'CoursesFailure { error: $error }';
}

class CertificationsInitial extends ProfileState {
  @override
  String toString() => 'CertificationsInitial';
}

class CertificationsLoading extends ProfileState {
  @override
  String toString() => 'CertificationsLoading';
}

class CertificationsFailure extends ProfileState {
  final String error;

  CertificationsFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'CertificationsFailure { error: $error }';
}

