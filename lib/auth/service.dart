import 'package:firebase_auth/firebase_auth.dart';
import 'package:tails_app/auth/model.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel?> signIn(String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return UserModel.fromFirebase(user!);
    } catch (e) {
      return null;
    }
  }

  Future<UserModel?> signUp(String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return UserModel.fromFirebase(user!);
    } catch (e) {
      return null;
    }
  }

  Future logOut() async {
    await _firebaseAuth.signOut();
  }

  Stream<UserModel?> get currentUser {
    return _firebaseAuth.authStateChanges().map(
        (User? user) => user != null ? UserModel.fromFirebase(user) : null);
  }

  // String currentUserLogin(Stream<UserModel?> currentUser) {
  //   // return currentUser != null ? UserModel.fromFirebase(currentUser).login.toString() : "null";
  //   return (UserModel(currentUser['id'], currentUser['email']).login ?? "");
  //   //return currentUser["id"].toString();
  // }
}
