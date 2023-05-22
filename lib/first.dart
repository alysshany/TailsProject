import 'package:filter_list/filter_list.dart';
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

  final List<String> filters = ["Все", "Собака", "Кошка", "Девочка", "Мальчик"];
  List<String> selectedFilter = [];
  List<String> selected = [];

  Future<void> openFilterDialog() async {
    setState(() {
      FilterListDelegate.show(
        theme: FilterListDelegateThemeData(
          tileTextStyle: TextStyle(fontFamily: "PlayfairDisplay"),
          listTileTheme: ListTileThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.white,
            selectedColor: Colors.red,
            selectedTileColor: const Color(0xFF649BEC).withOpacity(.5),
            textColor: Colors.blue,
          ),
        ),
        enableOnlySingleSelection: true,
        context: context,
        list: filters,
        onItemSearch: (user, query) {
          return user.toLowerCase().contains(query.toLowerCase());
        },
        tileLabel: (user) => user!,
        emptySearchChild: Center(child: Text('Не найдено')),
        searchFieldHint: 'Поиск...',
        onApplyButtonClick: (list) {
          setState(() {
            if (list == null) {
              selectedFilter = [];
            } else {
              selectedFilter = list!;
            }
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = [
      PetsDataPage(selectedFilter),
      const StoriesPage(),
      const ContactsPage()
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: index == 0
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      openFilterDialog();
                    });
                  },
                )
              ],
            )
          : AppBar(
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
