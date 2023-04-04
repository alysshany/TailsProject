import 'package:flutter/material.dart';

class PickUpPage extends StatefulWidget {
  const PickUpPage({super.key});

  @override
  State<PickUpPage> createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        //title: Image.asset("images/cat-whiskers.png"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget> [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          const Center(
            child: Text(
            "Как забрать питомца домой?",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 24),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Card(
                  elevation: 20,
                  color: const Color.fromARGB(255, 168, 212, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "1.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                      Text(
                        "Выберите питомца",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Card(
                  elevation: 20,
                  color: const Color.fromARGB(255, 168, 212, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "2.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                      Text(
                        "Оформите заявку",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Card(
                  elevation: 20,
                  color: const Color.fromARGB(255, 168, 212, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "3.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                      Text(
                        "Свяжитесь с куратором",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Card(
                  elevation: 20,
                  color: const Color.fromARGB(255, 168, 212, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "4.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                      Text(
                        "Пройдите собеседование",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Card(
                  elevation: 20,
                  color: const Color.fromARGB(255, 168, 212, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "5.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                      Text(
                        "Заберите питомца",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]
      )
    );
  }
}