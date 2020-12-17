import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocprovs/firebase_certificate_repository.dart';
import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/screens/course/subtopic/course_subtopic_dev.dart';

class CourseSubTopicPage extends StatelessWidget {
  final dynamic _topic;
  final Map<dynamic, dynamic> _subTopic;

  CourseSubTopicPage(
      {Key key,
      @required dynamic topic,
      @required Map<dynamic, dynamic> subTopic})
      : _topic = topic,
        _subTopic = subTopic,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        leading: InkWell(
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          _topic['title'],
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF324148),
      ),
      backgroundColor: Color(0xFF324148),
      body: BlocProvider(
        builder: (context) {
          return CourseBloc();
        },
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CourseSubTopicDevelopment(
              subTopics: _subTopic,
            ),
          ],
        ),
      ),
    );
  }
}
