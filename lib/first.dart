import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:tails_app/contacts.dart';
import 'package:tails_app/drawer.dart';
import 'package:tails_app/pets_data.dart';
import 'package:tails_app/stories.dart';

class FirstViewPage extends StatefulWidget {
  const FirstViewPage({super.key});

  @override
  State<FirstViewPage> createState() => _FirstViewPageState();
}

class _FirstViewPageState extends State<FirstViewPage> {
  final list = [PetsDataPage(), const StoriesPage(), const ContactsPage()];

  int index = 0;
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(
      () {
        index = i;
        _selectedTab = _SelectedTab.values[i];
      },
    );
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
      drawer: MenuDrawer(),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: const Color.fromARGB(159, 113, 142, 185),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            selectedColor: const Color.fromARGB(159, 113, 142, 185),
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: const Color.fromARGB(159, 113, 142, 185),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, person }
