import 'package:flutter/material.dart';

class ItemCertificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 25,
            height: 24,
            child: Image.asset('assets/images/logo.png'),
          ),
          Text(
            'PL-SQL',
            style: TextStyle(
              color: Color(0xFF343434),
              fontSize: 12,
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
            margin: EdgeInsets.only(top: 4),
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
            child: Text(
              'Angello Arambulo',
              style: TextStyle(
                color: Color(0xFF343434),
                fontSize: 12,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6.5),
            width: 40,
            height: 2,
            color: Color(0xFFFF7C00),
          )
        ],
      ),
    );
  }
}
