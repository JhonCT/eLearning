import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocprovs/firebase_certificate_repository.dart';
import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/screens/certificate/certificate_item.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CertificatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        leading: InkWell(
          child: Icon(
            Icons.chevron_left,
            color: Color(0xFF343434),
          ),
          onTap: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 24.2),
            child: Icon(
              Icons.search,
              color: Color(0xFF343434),
            ),
          ),
        ],
        title: Text(
          'Certificado',
          style: TextStyle(
            color: Color(0xFF343434),
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: BlocProvider<CourseBloc>(
        builder: (context) {
          return CourseBloc();
        },
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ClipRRect(
                    child: Image.network(
                      globals.user.person.photo,
                      width: 84,
                      height: 84,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    globals.user.person.fullname,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF343434),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    globals.user.person.email,
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF707070),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 56),
                  child: Text(
                    'FELICIDADES!!',
                    style: TextStyle(
                      fontSize: 38,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  width: 216,
                  child: Text(
                    'Ha completado con éxito el curso de ' +
                        globals.currentCourse.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF343434),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 81),
                  child: CertificateItem(),
                )
              ],
            ),
          ],
        ),
      ),
      //bottomNavigationBar: FooterNavigation(user: _user),
    );
  }
}
