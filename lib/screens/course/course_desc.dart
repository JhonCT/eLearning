import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 350,
        left: 15,
        right: 15,
        bottom: 17,
      ),
      width: MediaQuery.of(context).size.width,
//      height: MediaQuery.of(context).size.height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: Color(0xFFF7F8FA),
        elevation: 0,
        child: Container(
          padding: EdgeInsets.only(
            top: 25,
            left: 21,
            right: 21,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Descripción',
                  style: TextStyle(
                      color: Color(0xFF324148),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 14),
                child: Text(
                  'Este curso se enfoca en llevarte de un nivel CERO a intermedio-avanzado en el lenguaje de programación Java.',
                  style: TextStyle(
                    color: Color(0xFF324148),
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 14),
                child: Text(
                  'Requisitos',
                  style: TextStyle(
                    color: Color(0xFF324148),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.check,
                    size: 16,
                  ),
                  Expanded(
                    child: Text(
                      'Conocimiento básico en matemática básica.',
                      style: TextStyle(
                        color: Color(0xFF324148),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.check,
                    size: 16,
                  ),
                  Expanded(
                    child: Text(
                      'Deben de ser perseverantes y realizar las tareas.',
                      style: TextStyle(
                        color: Color(0xFF324148),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
