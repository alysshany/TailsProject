import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ArticleInfoPage extends StatefulWidget {
  final String? id;
  const ArticleInfoPage({this.id, super.key});

  @override
  State<ArticleInfoPage> createState() => _ArticleInfoPageState();
}

class _ArticleInfoPageState extends State<ArticleInfoPage> {
  var articleDoc;

  @override
  getDoc() {
    var user = FirebaseFirestore.instance
        .collection("articles")
        .doc(widget.id)
        .snapshots()
        .listen(
      (datasnapshot) {
        if (datasnapshot.exists) {
          if (!mounted) return;
          setState(
            () {
              articleDoc = datasnapshot.data();
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: FutureBuilder(
          future: getDoc(),
          builder: (context, snapshot) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        articleDoc?["title"] ??
                            "Такой статьи не существует".toString(),
                        style: TextStyle(
                            fontFamily: "PlayfairDisplay", fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.2,
                    //   child: Image.network(
                    //     articleDoc?["image"],
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        articleDoc?["text"] ??
                            "Такой статьи не существует".toString(),
                        style: TextStyle(
                            fontFamily: "PlayfairDisplay", fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        articleDoc?["titleTwo"] ??
                            "Такой статьи не существует".toString(),
                        style: TextStyle(
                            fontFamily: "PlayfairDisplay", fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        articleDoc?["textTwo"] ??
                            "Такой статьи не существует".toString(),
                        style: TextStyle(
                            fontFamily: "PlayfairDisplay", fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        articleDoc?["titleThree"] ??
                            "Такой статьи не существует".toString(),
                        style: TextStyle(
                            fontFamily: "PlayfairDisplay", fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        articleDoc?["textThree"] ??
                            "Такой статьи не существует".toString(),
                        style: TextStyle(
                            fontFamily: "PlayfairDisplay", fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        )),
      ),
    );
  }
}
