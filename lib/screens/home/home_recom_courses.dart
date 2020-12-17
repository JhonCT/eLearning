import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/components/components.dart';
import 'package:elearning_20/components/other_course_card.dart';

class RecommendCourses extends StatelessWidget {
  final String title;

  RecommendCourses({Key key, @required this.title})
      : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 133,
                margin: EdgeInsets.only(top: 35.4),
                child: Text(
                  title,
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
                  'Ver todo',
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
                        //print(course.userId);
                        return course.userId == null
                            ? OtherCourseCard(
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
      ),
    );
  }
}
