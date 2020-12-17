import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocprovs/firebase_certificate_repository.dart';
import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/blocs/course/course_bloc.dart';
import 'package:elearning_20/components/footer_navigation.dart';
import 'package:elearning_20/screens/course/topic/course_topic_dev.dart';

class CourseTopicPage extends StatelessWidget {
  final dynamic _unit;
  final Map<dynamic, dynamic> _topics;

  CourseTopicPage(
      {Key key, @required dynamic unit, @required Map<dynamic, dynamic> topics})
      : _unit = unit,
        _topics = topics,
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
          _unit['title'],
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
      backgroundColor: Colors.white,
      body: BlocProvider(
        builder: (context) {
          return CourseBloc();
        },
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xFF324148),
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
                right: 30,
                bottom: 93,
              ),
              child: Text(
                  'Si estás empezando con el lenguaje Java hay una serie de conceptos básicos Java de la orientación a objetos que debes de manejar para poder desarrollar con este lenguaje.'),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 180,
                left: 15,
                right: 15,
                bottom: 17,
              ),
              padding: EdgeInsets.all(10),
              child: CourseTopicsDevelopment(
                topics: _topics,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF7F8FA),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterNavigation(),
    );
  }
}
