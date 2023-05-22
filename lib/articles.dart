import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tails_app/articleInfo.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Center(
              child: Text(
                "Полезные статьи, с которыми следует ознакомиться!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(159, 52, 72, 102),
                  fontFamily: 'PlayfairDisplay',
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "1",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "1.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Каких кошек можно заводить при аллергии",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "2",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "2.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Можно ли заводить собаку во время беременности",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "3",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "3.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Как живут животные в приютах",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "4",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "4.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Уход за пожилой собакой",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "5",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "5.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Как и чем почистить зубы собаке",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "6",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "6.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Почему котенок не ест сухой корм",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "7",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "7.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Чем нельзя кормить собаку?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "8",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "8.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Популярные мифы о приютах для животных",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ArticleInfoPage(
                            id: "9",
                          ),
                        ),
                      )
                    },
                    child: Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "9.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(159, 52, 72, 102),
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Где оставить кошку на время отпуска",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
