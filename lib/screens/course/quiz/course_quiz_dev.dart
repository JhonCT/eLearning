import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:elearning_20/screens/course/quiz/course_quiz_item.dart';

class CourseQuizDevelopment extends StatelessWidget {
  final dynamic _quiz;

  const CourseQuizDevelopment({Key key, dynamic quiz})
      : _quiz = quiz,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
        left: 15,
        right: 15,
        bottom: 17,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: Color(0xFFF7F8FA),
        elevation: 0,
        child: Swiper(
          pagination: SwiperPagination(),
          loop: false,
          scrollDirection: Axis.horizontal,
          itemCount: _quiz['questions'].length,
          itemBuilder: (context, index) {
            index++;
            final question = _quiz['questions']['Pregunta $index'];
            return CourseQuizItem(
              question: question,
            );
          },
        ),
      ),
    );
  }
}
