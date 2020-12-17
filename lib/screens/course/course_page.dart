import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocprovs/firebase_certificate_repository.dart';
import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/components/footer_navigation.dart';
import 'package:elearning_20/courseFirebase/java.dart';
import 'package:elearning_20/models/course.dart';
import 'package:elearning_20/screens/certificate/certificate_page.dart';
import 'package:elearning_20/screens/course/course_desc.dart';
import 'package:elearning_20/screens/course/unit/course_unit_dev.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CoursePage extends StatelessWidget {
  final Course _course;

  CoursePage({Key key, @required Course course})
      : _course = course,
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
        actions: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CertificatePage())),
            child: Container(
              margin: EdgeInsets.only(right: 24.2),
              child: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
            ),
          ),
        ],
        title: Text(
          _course.name,
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
      backgroundColor: Colors.white,
      body: BlocProvider(
        builder: (context) {
          return CourseBloc();
        },
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Stack(
                overflow: Overflow.clip,
                children: <Widget>[
                  Container(
                    height: 380,
                    color: Color(0xFF324148),
                    child: CourseUnitsDevelopment(
                      course: _course,
                    ),
                  ),
                  CourseDescription(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FooterNavigation(),
      floatingActionButton: _course.userId == null
          ? FloatingActionButton(
              onPressed: () {
                Java(globals.user).saveCourse();
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xFF324148),
            )
          : null,
    );
  }
}
