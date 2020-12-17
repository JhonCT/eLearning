import 'package:flutter/material.dart';
import 'package:elearning_20/screens/course/quiz/course_quiz_page.dart';
import 'package:elearning_20/screens/course/subtopic/course_subtopic_page.dart';

class CourseTopicItem extends StatefulWidget {
  final dynamic topic;

  const CourseTopicItem({Key key, @required this.topic}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CourseTopicItemState();
}

class CourseTopicItemState extends State<CourseTopicItem> {
  dynamic get topic => widget.topic;

  bool isPressed = false;

  void _topicPressed(String title) {
    setState(() {
      isPressed = !isPressed;
      if (title.contains('Exámen')) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseQuizPage(
                      quiz: topic,
                    )));
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseSubTopicPage(
                      topic: topic,
                      subTopic: topic['sub_topics'],
                    )));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _topicPressed(topic['title']),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          height: 64,
          child: Center(
            child: Text(
              topic['title'],
              style: TextStyle(color: Color(0xFF324148)),
            ),
          ),
        ),
      ),
    );
  }
}
