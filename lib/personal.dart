import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tails_app/auth/auth.dart';
import 'package:tails_app/auth/service.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  AuthServices _authServices = AuthServices();

  bool? active;


  @override
  Widget build(BuildContext context) {
  //     var user = FirebaseFirestore.instance.collection("admins").doc(FirebaseAuth.instance.currentUser!.email.toString()).snapshots().listen((datasnapshot) {
  //     //FINDING A SPECIFICDOCUMENT IS EXISTING INSIDE A COLLECTION

  //   if (datasnapshot.exists) {
  //     setState(() {
  //       active = true;
  //     });
  //   } else if (!datasnapshot.exists) {
  //     setState(() {
  //       active = false;
  //     });
  //   }
  // });
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Column(
                  children: [
                    Container(
                    padding: const EdgeInsets.all(8), // Border width
                    decoration: const BoxDecoration(color: const Color.fromARGB(255, 231, 243, 255), shape: BoxShape.circle),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // 
                        
                      ),
                    ),
                  )]
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(FirebaseAuth.instance.currentUser!.email.toString() , style: TextStyle(
                                    fontFamily: 'PlayfairDisplay', fontSize: 16)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("fghi", style: TextStyle(
                                    fontFamily: 'PlayfairDisplay', fontSize: 16)),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}