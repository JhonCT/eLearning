import 'package:equatable/equatable.dart';

abstract class ProfileEvent extends Equatable {
  ProfileEvent([List props = const []]) : super(props);
}

class OverviewTabPressed extends ProfileEvent {
  @override
  String toString() => 'OverviewTabPressed';
}

class CoursesTabPressed extends ProfileEvent {
  @override
  String toString() => 'CoursesTabPressed';
}

class CertificationsTabPressed extends ProfileEvent {
  @override
  String toString() => 'CertificationsTabPressed';
}