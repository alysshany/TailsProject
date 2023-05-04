import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
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
                        Text("Статус", style: TextStyle(
                                    fontFamily: 'PlayfairDisplay', fontSize: 16)),
                        
                      ],
                    ),
                    Row(
                      children: [
                        Text("Имя", style: TextStyle(
                                    fontFamily: 'PlayfairDisplay', fontSize: 16)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Логин", style: TextStyle(
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