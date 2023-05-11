import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:tails_app/auth/auth.dart';
import 'package:tails_app/auth/service.dart';
import 'package:tails_app/data.dart';
import 'package:tails_app/personal.dart';
import 'package:tails_app/pets_data.dart';
import 'package:tails_app/pets_view.dart';
import 'package:tails_app/stories.dart';

class FirstViewPage extends StatefulWidget {
  const FirstViewPage({super.key});

  @override
  State<FirstViewPage> createState() => _FirstViewPageState();
}

class _FirstViewPageState extends State<FirstViewPage> {
  final list = [const PetsDataPage(), const StoriesPage(), PersonalPage()];
  int index = 0;
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      index = i;
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: list.elementAt(index),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 243, 255),
              ),
              child: UserAccountsDrawerHeader(
                accountName: const Text("Drawer"),
                accountEmail: const Text("TDD"),
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
                'Забрать питомца',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/pickPet');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text(
                'Добавить питомца',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/data');
              },
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: const Color.fromARGB(199, 123, 189, 255),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            selectedColor: const Color.fromARGB(199, 123, 189, 255),
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: const Color.fromARGB(199, 123, 189, 255),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, person }
