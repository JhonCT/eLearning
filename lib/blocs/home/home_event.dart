import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  HomeEvent([List props = const []]) : super(props);
}

class SearchCourses extends HomeEvent {
  @override
  String toString() => 'SearchCourses';
}

class ViewAllCourses extends HomeEvent {
  @override
  String toString() => 'ViewAllCourses';
}

class HomeButtonPressed extends HomeEvent {
  @override
  String toString() => 'HomeButtonPressed';
}

class ProfileButtonPressed extends HomeEvent {
  @override
  String toString() => 'ProfileButtonPressed';
}

class NotificationButtonPressed extends HomeEvent {  
  @override
  String toString() => 'NotificationButtonPressed';
}

class OptionsButtonPressed extends HomeEvent {
  @override
  String toString() => 'OptionsButtonPressed';
}