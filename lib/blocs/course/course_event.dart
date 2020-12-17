import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:elearning_20/models/certificate.dart';
import 'package:elearning_20/models/course.dart';

@immutable
abstract class CourseEvent extends Equatable {
  CourseEvent([List props = const []]) : super(props);
}

class UnitButtonPressed extends CourseEvent {
  final bool unitPressed;

  UnitButtonPressed(this.unitPressed);

  @override
  List<bool> get props => [unitPressed];

  @override
  String toString() => 'UnitButtonPressedEvent { unitPressed: $unitPressed}';
}

class VideoPressed extends CourseEvent {
  @override
  String toString() => 'VideoPressed';
}

class LoadCourse extends CourseEvent {
  @override
  String toString() => 'LoadCourse';
}

class CourseUpdated extends CourseEvent {
  final List<Course> courses;

  CourseUpdated(this.courses);

  @override
  List get props => [courses];

  @override
  String toString() => 'CourseUpdated';
}

class QuestionButtonPressed extends CourseEvent {
  final dynamic question;

  QuestionButtonPressed({this.question});

  @override
  List<Object> get props => [question];

  @override
  String toString() => 'QuestionButtonPressedEvent { question: $question }';
}

class SaveProgress extends CourseEvent {
  final dynamic course;

  SaveProgress({this.course});

  @override
  List get props => [course];

  @override
  String toString() => 'SaveProgress';
}

class LoadCertificate extends CourseEvent {
  @override
  String toString() => 'LoadCertificate';
}

class CertificateUpdated extends CourseEvent {
  final List<Certificate> certificates;

  CertificateUpdated(this.certificates);

  @override
  List get props => [certificates];

  @override
  String toString() => 'CertificateUpdated';
}

class GetCertificate extends CourseEvent {
  final String course;
  final String user;

  GetCertificate({this.course, this.user});

  @override
  List get props => [course, user];

  @override
  String toString() => 'GetCertificate';
}
