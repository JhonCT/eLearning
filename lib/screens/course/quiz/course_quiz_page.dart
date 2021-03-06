import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocprovs/firebase_certificate_repository.dart';
import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/screens/course/quiz/course_quiz_dev.dart';

class CourseQuizPage extends StatelessWidget {
  final dynamic _quiz;

  const CourseQuizPage({
    Key key,
    @required dynamic quiz,
  })  : _quiz = quiz,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        leading: InkWell(
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          _quiz['title'],
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF324148),
      ),
      backgroundColor: Color(0xFF324148),
      body: BlocProvider(
        builder: (context) {
          return CourseBloc();
        },
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CourseQuizDevelopment(
              quiz: _quiz,
            ),
          ],
        ),
      ),
    );
  }
}
