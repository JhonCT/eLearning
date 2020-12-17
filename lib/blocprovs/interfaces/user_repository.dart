import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:elearning_20/models/user.dart';

abstract class UserRepository {
  Future<firebase_auth.User> signInWithFacebook();
  Future<firebase_auth.User> signInWithGoogle();
  Future<void> signUp(
      {String email, String password, String fullname, String phone});
  Future<void> signInWithCredentials({String email, String password});
  Future<void> signOut();
  Future<bool> isSignedIn();
  Future<User> getUser();
}
