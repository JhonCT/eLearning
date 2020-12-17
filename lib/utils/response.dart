import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:elearning_20/models/person.dart';
import 'package:elearning_20/models/user.dart';

class Response {
  User firebaseUserConvertToUser(firebase_auth.User user) {
    User _user;
    if (user != null) {
      Person _person = new Person(
          email: user.email, fullname: user.displayName, photo: user.photoURL);
      _user = new User(id: user.uid, person: _person);
    }
    return _user;
  }
}
