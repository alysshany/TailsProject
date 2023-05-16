import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? id;
  String? login;

  UserModel.fromFirebase(User user) {
    id = user.uid;
    login = user.email;
  }

  UserModel(String? id, String? login) {
    // ignore: prefer_initializing_formals
    this.id = id;
    // ignore: prefer_initializing_formals
    this.login = login;
  }
}
