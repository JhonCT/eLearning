import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:elearning_20/blocprovs/firebase_person_repository.dart';
import 'package:elearning_20/models/person.dart';

import 'package:elearning_20/models/user.dart';
import 'package:elearning_20/utils/response.dart';

import 'interfaces/user_repository.dart';

class FirebaseUserRepository implements UserRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookLogin _facebookLogin;
  final FirebasePersonRepository _personRepository;

  FirebaseUserRepository(
      {firebase_auth.FirebaseAuth firebaseAuth,
      GoogleSignIn googleSignIn,
      FacebookLogin facebookLogin,
      FirebasePersonRepository personRepository})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _facebookLogin = facebookLogin ?? FacebookLogin(),
        _personRepository = personRepository ?? new FirebasePersonRepository();

  @override
  Future<User> getUser() async {
    User _currentUser;
    firebase_auth.User _firebaseUser;

    _firebaseUser = _firebaseAuth.currentUser;
    print('----------------get-user---------------');
    print(_firebaseUser);
    _currentUser = Response().firebaseUserConvertToUser(_firebaseUser);

    return _currentUser;
  }

  @override
  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  @override
  Future<void> signInWithCredentials({String email, String password}) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<firebase_auth.User> signInWithFacebook() async {
    final FacebookLoginResult result = await _facebookLogin.logIn(['email']);
    FacebookAccessToken accessToken = result.accessToken;
    firebase_auth.AuthCredential credential =
        firebase_auth.FacebookAuthProvider.credential(accessToken.token);
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  }

  @override
  Future<firebase_auth.User> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final firebase_auth.AuthCredential credential =
          firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      return _firebaseAuth.currentUser;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
      _facebookLogin.logOut(),
    ]);
  }

  @override
  Future<void> signUp(
      {String email, String password, String fullname, String phone}) async {
    return await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((cred) {
      Person _person =
          new Person(email: email, fullname: fullname, phone: phone);
      _personRepository.addNewPerson(_person);
    });
  }
}
