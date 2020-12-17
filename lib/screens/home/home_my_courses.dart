import 'package:elearning_20/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/components/components.dart';
import 'package:elearning_20/components/item_course_card.dart';
import 'package:elearning_20/models/user.dart';

class MyCourses extends StatelessWidget {
  final User _user;

  MyCourses({Key key, @required User user})
      : _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 133,
                margin: EdgeInsets.only(top: 35.4),
                child: Text(
                  myCourses,
                  style: TextStyle(
                    color: Color(0xFF324148),
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: 191,
                margin: EdgeInsets.only(top: 32.2),
                child: Text(
                  viewAll,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color(0xFF5F5F5F),
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 14),
            height: 155,
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
                    },
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
