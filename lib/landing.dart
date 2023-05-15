import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tails_app/auth/auth.dart';
import 'package:tails_app/auth/model.dart';
import 'package:tails_app/data.dart';
import 'package:tails_app/drawer.dart';
import 'package:tails_app/first.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
     
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;
    return check ? const FirstViewPage() : const AuthPage();
  }
}


    // StreamBuilder(
    //     stream: FirebaseFirestore.instance.collection("users").snapshots(),
    //     builder: (context, AsyncSnapshot<dynamic> snapshot) {
    //       if (!snapshot.hasData) 
    //       {
    //         return const Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       } 
    //       else 
    //       {
    //         var list = snapshot.data.docs.where(
    //             (x) => x['login'] == FirebaseAuth.instance.currentUser!.email.toString() && x['role'] == 'admin').toList();
    //         // for (var docSnapshot in list.docs) {
    //         //   if (docSnapshot["role"] == "admin")
    //         //   {
    //         //     check = true;

    //         //   }
    //         //   else{
    //         //     check = false;

    //         //   }
    //         // };
    //         if (list != null) {
    //           active=true;
    //         } else {
    //           active =false;
    //         }
    //         return Container();
    //       }
    //     },
    //   );
    // getRole() async {
    //   bool check = false;
    //   StreamBuilder(
    //     stream: FirebaseFirestore.instance.collection("users").snapshots(),
    //     builder: (context, AsyncSnapshot<dynamic> snapshot) {
    //       if (!snapshot.hasData) {
    //         return const Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       } else {
    //         var list = snapshot.data.docs.where(
    //             (x) => x['login'] == FirebaseAuth.instance.currentUser!.email.toString() && x['role'] == 'admin').toList();
    //         // for (var docSnapshot in list.docs) {
    //         //   if (docSnapshot["role"] == "admin")
    //         //   {
    //         //     check = true;

    //         //   }
    //         //   else{
    //         //     check = false;

    //         //   }
    //         // };
    //         if (list != null) {
    //           Info().check==true;
    //         } else {
    //           Info().check ==false;
    //         }
    //         return Container();
    //       }
    //     },
    //   );
    // var user = FirebaseFirestore.instance.collection("users").where("login", isEqualTo: FirebaseAuth.instance.currentUser!.email.toString()).get().then(
    //   (querySnapshot)
    //   {
    //     for (var docSnapshot in querySnapshot.docs) {
    //       if (docSnapshot["role"] == "admin")
    //       {
    //         check = true;

    //       }
    //       else{
    //         check = false;

    //       }
    //     }
    //   },
    // );
  //}
