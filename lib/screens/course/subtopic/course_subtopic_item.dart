import 'package:flutter/material.dart';

class CourseSubTopicItem extends StatelessWidget {
  final dynamic _subTopic;

  const CourseSubTopicItem({Key key, dynamic subTopic})
      : _subTopic = subTopic,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(24),
          //padding: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                _subTopic['title'],
                style: TextStyle(
                  color: Color(0xFF343434),
                  fontSize: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  _subTopic['description'],
                  style: TextStyle(
                    color: Color(0xFF343434),
                    height: 1.5,
                    fontSize: 12,
                  ),
                ),
              ),
              _subTopic['example_code'] != ''
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width - 86,
                            padding: EdgeInsets.only(left: 5),
                            color: Color(0xFF1E969C),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Color(0xFF324148),
                              child: Text(_subTopic['example_code']),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              _subTopic['result'] != ''
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 11, bottom: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _subTopic['result'],
                            style: TextStyle(
                              color: Color(0xFF343434),
                              height: 1.5,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: 30),
                    ),
              _subTopic['tip'] != ''
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width - 86,
                            color: Color(0xFF324148),
                            padding: EdgeInsets.only(left: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 91,
                              padding: EdgeInsets.all(12),
                              color: Color(0xFF1E969C),
                              child: Center(
                                child: Text(
                                  _subTopic['tip'],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 11),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
