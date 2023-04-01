import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Image.asset("images/cat-whiskers.png"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              child: DropShadow(
                blurRadius: 20,
                borderRadius: 15,
                child: Image.asset("images/image2.png"),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
              width: MediaQuery.of(context).size.height * 0.40,
              alignment: Alignment.topCenter,
              child: const Text(
                "А знаете ли вы, как приятно просыпаться не оттого, что тишину пронзительно взрывает будильник, а оттого, что кошка мурлыкает над ухом, поет свою кошачью песенку...",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'PlayfairDisplay'),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/auth');
        },
        backgroundColor: const Color.fromARGB(199, 123, 189, 255),
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
