import 'package:flutter/material.dart';

class PetsViewPage extends StatefulWidget {
  const PetsViewPage({super.key});

  @override
  State<PetsViewPage> createState() => _PetsViewPageState();
}

class _PetsViewPageState extends State<PetsViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        
      ]),
    );
  }
}