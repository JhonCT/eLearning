import 'package:flutter/material.dart';
import 'package:elearning_20/screens/course/topic/course_topic_item.dart';

class CourseTopicsDevelopment extends StatefulWidget {
  final Map<dynamic, dynamic> topics;

  const CourseTopicsDevelopment({Key key, @required this.topics})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => CourseTopicsDevelopmentState();
}

class CourseTopicsDevelopmentState extends State<CourseTopicsDevelopment> {
  Map<dynamic, dynamic> get topics => widget.topics;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: topics.length,
        padding: EdgeInsets.only(top: 37, bottom: 54),
        itemBuilder: (context, index) {
          index++;
          final topic = topics['Tema $index'];
          return CourseTopicItem(topic: topic);
        });
  }
}
