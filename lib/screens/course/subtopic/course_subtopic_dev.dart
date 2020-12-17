import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:elearning_20/screens/course/subtopic/course_subtopic_item.dart';

class CourseSubTopicDevelopment extends StatelessWidget {
  final Map<dynamic, dynamic> subTopics;

  CourseSubTopicDevelopment({Key key, @required this.subTopics})
      : super(key: key);

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
      height: MediaQuery.of(context).size.height + 40,
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
          itemCount: subTopics.length,
          itemBuilder: (context, index) {
            index++;
            final subTopic = subTopics['Sub Tema $index'];
            return CourseSubTopicItem(
              subTopic: subTopic,
            );
          },
        ),
      ),
    );
  }
}
