import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:tails_app/data.dart';
import 'package:tails_app/pets_data.dart';
import 'package:tails_app/pets_view.dart';
import 'package:tails_app/stories.dart';

class FirstViewPage extends StatefulWidget {
  const FirstViewPage({super.key});

  @override
  State<FirstViewPage> createState() => _FirstViewPageState();
}

class _FirstViewPageState extends State<FirstViewPage> {
  final list = [const PetsViewPage(), const StoriesPage(), DataPage()];
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(198, 137, 196, 254),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('О проекте'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Забрать питомца'),
              onTap: () {
                Navigator.pop(context);
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
            selectedColor: const Color.fromARGB(255, 63, 168, 255),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            selectedColor: const Color.fromARGB(255, 83, 177, 255),
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: const Color.fromARGB(255, 120, 194, 255),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, person }
