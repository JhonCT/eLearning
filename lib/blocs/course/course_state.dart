import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:elearning_20/models/certificate.dart';
import 'package:elearning_20/models/course.dart';

@immutable
abstract class CourseState extends Equatable {
  CourseState([List props = const []]) : super(props);
}

class CourseInitial extends CourseState {
  @override
  String toString() => 'CourseStateInitialized';
}

class CourseUninitialized extends CourseState {
  @override
  String toString() => 'CourseStateUninitialized';
}

class CourseLoaded extends CourseState {
  final List<Course> courses;

  CourseLoaded(this.courses);

  @override
  List<Object> get props => [courses];

  @override
  String toString() => 'CourseLoaded';
}

class CertificateLoaded extends CourseState {
  final List<Certificate> certificates;

  CertificateLoaded(this.certificates);

  @override
  List<Object> get props => [certificates];

  @override
  String toString() => 'CertificateLoaded';
}

class CourseLoading extends CourseState {
  @override
  String toString() => 'CourseLoading';
}

class CourseFailure extends CourseState {
  final String error;

  CourseFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'HomeFailure { error: $error }';
}

class CourseDevelopmentState extends CourseState {
  final Course course;

  CourseDevelopmentState(this.course);

  @override
  List<Object> get props => [course];

  @override
  String toString() => 'CourseDevelopment';
}

class UnitButtonPressedState extends CourseState {
  final bool unitPressed;

  UnitButtonPressedState(this.unitPressed);

  @override
  List<bool> get props => [unitPressed];

  @override
  String toString() => 'UnitButtonPressedState { unitPressed: $unitPressed }';
}

class QuestionSentState extends CourseState {
  final dynamic question;

  QuestionSentState(this.question);

  @override
  List<dynamic> get props => [question];

  @override
  String toString() => 'QuestionSentState { question: $question }';
}

class QuestionLoadingState extends CourseState {
  @override
  String toString() => 'QuestionLoadingState';
}

class CourseTerminateState extends CourseState {
  final int progress;

  CourseTerminateState(this.progress);

  @override
  List<dynamic> get props => [progress];

  @override
  String toString() => 'CourseTerminateState { progress: $progress }';
}
