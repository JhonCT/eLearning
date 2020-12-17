import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  HomeState([List props = const []]) : super(props);
}

class HomeInitial extends HomeState {
  @override
  String toString() => 'HomeInitial';
}

class HomeLoading extends HomeState {
  @override
  String toString() => 'HomeLoading';
}

class HomeFailure extends HomeState {
  final String error;

  HomeFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'HomeFailure { error: $error }';
}
