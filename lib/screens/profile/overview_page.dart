import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/components/components.dart';
import 'package:elearning_20/components/item_course_card.dart';
import 'package:elearning_20/models/user.dart';

class OverviewPage extends StatelessWidget {
  final User _user;

  const OverviewPage({Key key, User user})
      : _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 280,
          child: Image.asset(
            'assets/images/skills.png',
            height: 280,
          ),
        ),
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
                      print(course.userId);
                      return (course != null && course.userId == _user.id)
                          ? ItemCourseCard(
                              showProgress: true,
                              user: _user,
                              course: course,
                            )
                          : Container();
                    });
              } else {
                return Container();
              }
            },
          ),
        ),
      ],
    );
  }
}
