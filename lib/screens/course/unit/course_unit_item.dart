import 'package:flutter/material.dart';
import 'package:elearning_20/models/course.dart';
import 'package:elearning_20/screens/course/topic/course_topic_page.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CourseUnitItem extends StatefulWidget {
  final dynamic unit;
  final Course course;

  const CourseUnitItem({Key key, this.unit, this.course}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CourseUnitItemState();
}

class CourseUnitItemState extends State<CourseUnitItem> {
  dynamic get unit => widget.unit;
  Course get course => widget.course;
  bool isPressed = false;

  @override
  void initState() {
    super.initState();
    globals.currentCourse = course;
  }

  void _unitPressed() {
    setState(() {
      isPressed = !isPressed;
      if (course.userId != null) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseTopicPage(
                      unit: unit,
                      topics: unit['topics'],
                    )));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _unitPressed(),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: 5,
              height: 51,
              margin: EdgeInsets.only(left: 30, right: 20),
              color: Color(0xFF6E7B82),
              child: Icon(
                Icons.brightness_1,
                color: Colors.white,
                size: 10,
              ),
            ),
            isPressed
                ? Container(
                    width: 200,
                    height: 39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xFF6E7B82),
                    ),
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        unit['title'],
                        style: TextStyle(
                          fontSize: unit['title'].length > 25 ? 10 : 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Container(
                    width: 180,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 3),
                          child: Text(
                            unit['title'],
                            style: TextStyle(
                              fontSize: unit['title'].length > 25 ? 10 : 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 3),
                          child: Text(
                            '01 minutos',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
