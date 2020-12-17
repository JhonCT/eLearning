import 'package:flutter/material.dart';
import 'package:elearning_20/models/course.dart';
import 'package:elearning_20/screens/course/unit/course_unit_item.dart';

class CourseUnitsDevelopment extends StatefulWidget {
  final Course course;

  const CourseUnitsDevelopment({Key key, @required this.course})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => CourseUnitsDevelopmentState();
}

class CourseUnitsDevelopmentState extends State<CourseUnitsDevelopment> {
  Course get course => widget.course;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: course.units.length,
        padding: EdgeInsets.only(top: 37, bottom: 54),
        itemBuilder: (context, index) {
          index++;
          final units = course.units['Unidad $index'];
          return CourseUnitItem(
            unit: units,
            course: course,
          );
        });
  }
}
