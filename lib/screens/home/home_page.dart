import 'package:elearning_20/components/custom_app_bar.dart';
import 'package:elearning_20/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course_bloc.dart';
import 'package:elearning_20/blocs/course/course_event.dart';
import 'package:elearning_20/components/footer_navigation.dart';
import 'package:elearning_20/models/user.dart';
import 'package:elearning_20/screens/home/home_my_courses.dart';
import 'package:elearning_20/screens/home/home_recom_courses.dart';

class HomePage extends StatelessWidget {
  final User _user;

  HomePage({Key key, @required User user})
      : _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: home,
        color: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: BlocProvider<CourseBloc>(
        builder: (context) {
          return CourseBloc()..dispatch(LoadCourse());
        },
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MyCourses(user: _user),
                RecommendCourses(title: freeCourses),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterNavigation(),
    );
  }
}
