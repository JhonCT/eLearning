import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:elearning_20/models/course.dart';
import 'package:elearning_20/screens/course/course_page.dart';

class OtherCourseCard extends StatelessWidget {
  final Course course;

  const OtherCourseCard({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CoursePage(
            course: course,
          ),
        ),
      ),
      child: Container(
        width: 172.59,
        child: Card(
          color: Theme.of(context).accentColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Container(
                  width: 111.59,
                  height: 73.49,
                  child: Image.asset('assets/images/logojava.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 11, top: 4.5),
                child: Text(
                  course.name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF555555),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 7, top: 2),
                child: SmoothStarRating(
                  allowHalfRating: true,
                  starCount: 5,
                  rating: double.parse(course.qualification),
                  size: 12.0,
                  color: Theme.of(context).primaryColor,
                  borderColor: Theme.of(context).primaryColor,
                  spacing: 0.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 11, top: 3.5),
                child: Text(
                  'Gratis',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
