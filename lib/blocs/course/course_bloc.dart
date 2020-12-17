import 'dart:async';
import 'dart:core';
import 'package:bloc/bloc.dart';
import 'package:elearning_20/blocprovs/firebase_certificate_repository.dart';
import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/models/certificate.dart';
import 'package:elearning_20/models/course.dart';
import './course.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final FirebaseCourseRepository _firebaseCourseRepository =
      FirebaseCourseRepository();
  final FirebaseCertificateRepository _firebaseCertificateRepository =
      FirebaseCertificateRepository();
  StreamSubscription _courseSubscription;
  StreamSubscription _certificateSubscription;

  @override
  CourseState get initialState => CourseLoading();

  @override
  Stream<CourseState> mapEventToState(
    CourseEvent event,
  ) async* {
    if (event is UnitButtonPressed) {
      yield* _mapUnitButtonPressedToState(event);
    }
    if (event is LoadCourse) {
      yield* _mapLoadCourseToState();
    }
    if (event is CourseUpdated) {
      yield* _mapCourseUpdatedToState(event);
    }
    if (event is QuestionButtonPressed) {
      yield* _mapQuestionButtonPressedToState(event);
    }
    if (event is SaveProgress) {
      yield* _mapSaveProgressToState(event);
    }
    if (event is GetCertificate) {
      yield* _mapGetCertificateToState(event);
    }
    if (event is LoadCertificate) {
      yield* _mapLoadCertificateToState();
    }
    if (event is CertificateUpdated) {
      yield* _mapCertificateUpdatedToState(event);
    }
  }

  Stream<CourseState> _mapQuestionButtonPressedToState(
      QuestionButtonPressed event) async* {
    yield QuestionLoadingState();
    final dynamic response =
        await _firebaseCourseRepository.submitQuestionQuiz(event.question);
    yield QuestionSentState(response);
  }

  Stream<CourseState> _mapUnitButtonPressedToState(
      UnitButtonPressed event) async* {
    yield UnitButtonPressedState(event.unitPressed);
  }

  Stream<CourseState> _mapLoadCourseToState() async* {
    _courseSubscription?.cancel();
    _certificateSubscription?.cancel();

    _courseSubscription = _firebaseCourseRepository
        .courses()
        .listen((courses) => dispatch(CourseUpdated(courses)));
  }

  Stream<CourseState> _mapSaveProgressToState(SaveProgress event) async* {
    Course course = event.course;
    course.points += 4;
    int modulePoints = (course.points + 16) % 16;
    if (modulePoints == 0) {
      if (course.points == 96 && course.points < 100) {
        course.progress += 20;
      } else {
        course.progress += 16;
      }
      _firebaseCourseRepository.updateCourse(course);
    }
    _firebaseCourseRepository.updateCourse(course);
  }

  Stream<CourseState> _mapCourseUpdatedToState(CourseUpdated event) async* {
    yield CourseLoaded(event.courses);
  }

  Stream<CourseState> _mapGetCertificateToState(GetCertificate event) async* {
    Certificate certificate =
        Certificate(course: event.course, user: event.user, date: '');

    _firebaseCertificateRepository.add(certificate);
  }

  Stream<CourseState> _mapLoadCertificateToState() async* {
    _certificateSubscription?.cancel();

    _certificateSubscription = _firebaseCertificateRepository
        .certificates()
        .listen((certificates) => dispatch(CertificateUpdated(certificates)));
  }

  Stream<CourseState> _mapCertificateUpdatedToState(
      CertificateUpdated event) async* {
    yield CertificateLoaded(event.certificates);
  }

  @override
  void dispose() {
    _courseSubscription?.cancel();
    _certificateSubscription?.cancel();
    super.dispose();
  }
}
