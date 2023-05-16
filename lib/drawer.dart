import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tails_app/auth/service.dart';

class MenuDrawer extends StatefulWidget {
  bool? active;
  MenuDrawer({super.key, this.active});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  getUser() {
    var user = FirebaseFirestore.instance
        .collection("admins")
        .doc(FirebaseAuth.instance.currentUser!.email.toString())
        .snapshots()
        .listen((datasnapshot) {
      //FINDING A SPECIFICDOCUMENT IS EXISTING INSIDE A COLLECTION

      if (datasnapshot.exists) {
        setState(() {
          widget.active = true;
        });
      } else if (!datasnapshot.exists) {
        setState(() {
          widget.active = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String email = FirebaseAuth.instance.currentUser!.email.toString();
    final user = FirebaseFirestore.instance
        .collection("admins")
        .doc(email)
        .snapshots()
        .toString();
    // getRole(email);
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 231, 243, 255),
            ),
            child: UserAccountsDrawerHeader(
              accountName: Text(email),
              accountEmail: const Text("Tails"),
              otherAccountsPictures: [
                IconButton(
                    onPressed: () => {
                          AuthServices().logOut(),
                        },
                    icon: const Icon(Icons.exit_to_app))
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text(
              'О проекте',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/projectInfo');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text(
              "Добавить питомца",
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/data');
            },
          ),
          FutureBuilder(
            future: getUser(),
            builder: (context, snapshot) {
              return widget.active == true
                  ? ListTile(
                      leading: const Icon(
                        Icons.pets,
                      ),
                      title: const Text(
                        "Добавить питомца",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/data');
                      },
                    )
                  : ListTile(
                      leading: const Icon(
                        Icons.pets,
                      ),
                      title: const Text(
                        'Как забрать питомца',
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/pickPet');
                      },
                    );
            },
          ),
        ],
      ),
    );
  }
}
