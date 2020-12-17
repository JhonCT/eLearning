import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:elearning_20/models/user.dart';
import 'package:elearning_20/screens/course/course_page.dart';

class ItemCourseCard extends StatelessWidget {
  final bool showProgress;
  final User user;
  final dynamic course;

  const ItemCourseCard({Key key, this.showProgress, this.user, this.course})
      : assert(showProgress != null),
        super(key: key);

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
        height: 152,
        child: Card(
          elevation: 2,
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  title: Text(
                    course.name,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 7),
                    child: Icon(
                      Icons.access_alarm,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '10 días atrás',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              showProgress
                  ? Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 9, right: 23),
                          child: Text(
                            course.progress.toString() + '% completado',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 5.5, left: 12, bottom: 20),
                          child: LinearPercentIndicator(
                            width: 135,
                            lineHeight: 3,
                            percent: course.progress / 100,
                            backgroundColor: Colors.white,
                            progressColor: Color(0xFF343434),
                          ),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
