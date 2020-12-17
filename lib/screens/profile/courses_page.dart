import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/components/components.dart';
import 'package:elearning_20/components/item_course_card.dart';
import 'package:elearning_20/models/user.dart';
import 'package:elearning_20/screens/certificate/certificate_item.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CoursesPage extends StatelessWidget {
  final User _user;

  const CoursesPage({Key key, User user})
      : _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15, top: 14),
          height: 152,
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              if (state is CourseLoading) {
                return LoadingIndicator();
              } else if (state is CourseLoaded) {
                final courses = state.courses;
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courses.length,
                    itemBuilder: (context, index) {
                      final course = courses[index];
                      return (course != null && course.userId == _user.id)
                          ? Container(
                              width: 172.59,
                              child: ItemCourseCard(
                                showProgress: true,
                                user: _user,
                                course: course,
                              ),
                            )
                          : Container();
                    });
              } else {
                return Container();
              }
            },
          ),
        ),
        Container(
          width: 321,
          height: 1,
          margin: EdgeInsets.only(top: 29, bottom: 23),
          color: Color(0xFFE1E1E1),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 14),
          height: 152,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              globals.currentCourse.name != null
                  ? CertificateItem()
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
