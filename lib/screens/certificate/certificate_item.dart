import 'package:flutter/material.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CertificateItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172.59,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          width: 132,
          height: 145,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/logojava.png',
                  width: 28,
                  height: 24,
                ),
              ),
              Center(
                child: Text(
                  globals.currentCourse.name,
                  style: TextStyle(
                    color: Color(0xFF343434),
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                child: Text(
                  'CERTIFICADO',
                  style: TextStyle(
                    color: Color(0xFF343434),
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                child: Text(
                  'Otorgado a',
                  style: TextStyle(
                    color: Color(0xFF343434),
                    fontSize: 8,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9),
                padding: EdgeInsets.only(left: 3, right: 3),
                child: Center(
                  child: Text(
                    globals.user.person.fullname,
                    style: TextStyle(
                      color: Color(0xFF343434),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                width: 40,
                height: 2,
                color: Color(0xFFFF7C00),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
