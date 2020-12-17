import 'package:flutter/material.dart';
import 'package:elearning_20/screens/certificate/certificate_item.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class CertificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 31, right: 31, top: 24.5),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              globals.currentCourse.name != null
                  ? CertificateItem()
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}

/*
BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              if (state is CertificateLoaded) {
                print(state.certificates.toString());
                final certificates = state.certificates;
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: certificates.length,
                    itemBuilder: (context, index) {
                      final certificate = certificates[index];
                      print(certificate);
                      return CertificateItem(
                        
                      );
                    });
              } else {
                return Container();
              }
            },
          ),*/
