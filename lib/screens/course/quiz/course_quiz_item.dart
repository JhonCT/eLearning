import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/blocs/course/course_bloc.dart';
import 'package:elearning_20/screens/certificate/certificate_page.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CourseQuizItem extends StatefulWidget {
  final dynamic _question;

  const CourseQuizItem({Key key, dynamic question})
      : _question = question,
        super(key: key);

  @override
  State<StatefulWidget> createState() => CourseQuizItemState();
}

class CourseQuizItemState extends State<CourseQuizItem> {
  dynamic get _question => widget._question;
  TextEditingController _controller;
  CourseBloc _courseBloc;
  dynamic _response;

  @override
  void initState() {
    super.initState();
    _courseBloc = BlocProvider.of<CourseBloc>(context);

    _controller = TextEditingController(
        text:
            'public class Main { \n public static void main(String[] args) {\t } \n }');

    _response = '';
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CourseBloc, CourseState>(
        bloc: _courseBloc,
        listener: (context, state) {
          if (state is QuestionLoadingState) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Enviando tu respuesta...'),
                      CircularProgressIndicator(),
                    ],
                  ),
                ),
              );
          }
          if (state is QuestionSentState) {
            _response = state.question;
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      state.question['stdout'].toString() != ''
                          ? Text(state.question['stdout'].toString())
                          : Text(state.question['stderr'].toString()),
                    ],
                  ),
                ),
              );
          }
        },
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width + 4.6,
              padding: EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _question['description'],
                    style: TextStyle(
                      color: Color(0xFF324148),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      _question['question'],
                      style: TextStyle(
                        color: Color(0xFF324148),
                        letterSpacing: 2,
                        height: 1.5,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 37),
                    child: TextField(
                      controller: _controller,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: ButtonTheme(
                          minWidth: 60,
                          child: RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            onPressed: () => _onFormSubmitted(),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  child: Icon(Icons.play_arrow),
                                ),
                                Text(
                                  'Run',
                                  style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 155,
                        margin: EdgeInsets.only(top: 10),
                        child: ButtonTheme(
                          padding: EdgeInsets.all(2),
                          minWidth: 60,
                          child: RaisedButton(
                            color: Color(0xFF324148),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            onPressed: () => _validateResponse(_response),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  child: Icon(
                                    Icons.send,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Enviar respuesta',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void _onFormSubmitted() {
    _courseBloc.dispatch(
      QuestionButtonPressed(
        question: _controller.text,
      ),
    );
  }

  void _validateResponse(dynamic response) {
    String _stateResponse = 'Incorrecta!';

    if (response['stdout'] == _question['response_correct']) {
      _stateResponse = 'Correcta!';

      _courseBloc.dispatch(SaveProgress(course: globals.currentCourse));

      if (globals.currentCourse.progress == 100) {
        _courseBloc.dispatch(GetCertificate(
            course: globals.currentCourse.name,
            user: globals.user.person.fullname));
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CertificatePage()));
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            title: Text(
              'Tu respuesta es:',
              style: TextStyle(color: Color(0xFF324148)),
            ),
            content: Text(
              _stateResponse,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          );
        });
  }
}
