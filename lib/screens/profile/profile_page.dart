import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elearning_20/blocs/course/course.dart';
import 'package:elearning_20/components/footer_navigation.dart';
import 'package:elearning_20/models/user.dart';
import 'package:elearning_20/screens/profile/certifications_page.dart';

import 'courses_page.dart';
import 'overview_page.dart';

class ProfilePage extends StatefulWidget {
  final User _user;

  const ProfilePage({Key key, User user})
      : _user = user,
        super(key: key);

  @override
  State<StatefulWidget> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  User get user => widget._user;
  Widget contentTabs;

  @override
  void initState() {
    contentTabs = OverviewPage(user: user);
    super.initState();
  }

  selectTab(int index) {
    setState(() {
      switch (index) {
        case 0:
          contentTabs = OverviewPage(
            user: user,
          );
          break;
        case 1:
          contentTabs = CoursesPage(
            user: user,
          );
          break;
        case 2:
          contentTabs = CertificationsPage();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider<CourseBloc>(
        builder: (context) {
          return CourseBloc()..dispatch(LoadCourse());
        },
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 22.2),
              child: Column(
                children: <Widget>[
                  Center(
                    child: ClipRRect(
                      child: Image.network(user.person.photo),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11.8),
                    child: Center(
                      child: Text(
                        user.person.fullname,
                        style: TextStyle(
                          color: Color(0xFF343434),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6.3),
                    child: Center(
                      child: Text(
                        user.person.email,
                        style:
                            TextStyle(color: Color(0xFF707070), fontSize: 10),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11.1, left: 27, right: 27),
                    child: DefaultTabController(
                      length: 3,
                      child: AppBar(
                        elevation: 0.2,
                        backgroundColor: Colors.white,
                        automaticallyImplyLeading: false,
                        flexibleSpace: SafeArea(
                          child: TabBar(
                            onTap: (int index) => selectTab(index),
                            labelColor: Theme.of(context).primaryColor,
                            unselectedLabelColor: Color(0xFF343434),
                            indicatorColor: Theme.of(context).primaryColor,
                            tabs: <Widget>[
                              Tab(
                                child: Text(
                                  'Overview',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Cursos',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Certificados',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(child: contentTabs),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        brightness: Brightness.light,
        leading: InkWell(
          child: Icon(
            Icons.chevron_left,
            color: Color(0xFF343434),
          ),
          onTap: () {
            Navigator.pop(context);
          },
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
          'Perfil',
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
      bottomNavigationBar: FooterNavigation(),
    );
  }
}
