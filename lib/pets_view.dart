

import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:tails_app/data.dart';
import 'package:tails_app/info_about_project.dart';
import 'package:tails_app/pick_up_the_pet.dart';
import 'package:tails_app/stories.dart';

class PetsViewPage extends StatefulWidget {
  const PetsViewPage({super.key});

  @override
  State<PetsViewPage> createState() => _PetsViewPageState();
}

class _PetsViewPageState extends State<PetsViewPage> {
  final list = [const AboutProjectPage(), const PickUpPage(), const StoriesPage(),  DataPage()];
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
      body: list.elementAt(index),
      extendBody: true,
      bottomNavigationBar:  DotNavigationBar(
        
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: const Color.fromARGB(255, 63, 168, 255),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            selectedColor: const Color.fromARGB(255, 83, 177, 255),
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            selectedColor: const Color.fromARGB(255, 99, 184, 253),
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: const Color.fromARGB(255, 120, 194, 255),
          ),
          
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }