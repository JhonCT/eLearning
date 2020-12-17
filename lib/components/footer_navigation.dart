import 'dart:core';

import 'package:elearning_20/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/authentication/authentication.dart';
import 'package:elearning_20/courseFirebase/java.dart';
import 'package:elearning_20/screens/home/home.dart';
import 'package:elearning_20/screens/profile/profile_page.dart';
import 'package:elearning_20/utils/globals.dart' as globals;

class FooterNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FooterNavigationState();
}

class FooterNavigationState extends State<FooterNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 7.8,
            bottom: 19.2,
            child: InkWell(
                child: Icon(
                  Icons.home,
                  size: 24,
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(user: globals.user)))),
          ),
          Center(
            child: GestureDetector(
              child: ClipRRect(
                child: Image.network(
                  globals.user.person.photo,
                  width: 50,
                  height: 50,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(
                    user: globals.user,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 57.1,
            bottom: 19.2,
            child: InkWell(
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 24,
              ),
              onTap: () => {},
            ),
          ),
          Positioned(
            right: 7.8,
            bottom: 7.5,
            child: PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) => choices
                  .map(
                    (String choice) => PopupMenuItem<String>(
                      value: choice,
                      child: Text(
                        choice,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == signOut) {
      BlocProvider.of<AuthenticationBloc>(context).dispatch(LoggedOut());
    }
    if (choice == settings) {
      Java(globals.user).saveCourse();
    }
  }
}
