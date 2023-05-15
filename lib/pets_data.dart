import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tails_app/data.dart';

class PetsDataPage extends StatefulWidget {
  //final String searchText;
  const PetsDataPage({super.key});

  @override
  State<PetsDataPage> createState() => _PetsDataPageState();
}

class _PetsDataPageState extends State<PetsDataPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("pets").snapshots(),
      builder: (context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        } 
        else {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index) =>
                buildList(context, snapshot.data.docs[index]),
          );
        }
      },
    );
  }

  Widget buildList(context, docs) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 231, 243, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlipCard(
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        side: CardSide.FRONT,
        front: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width:
                      MediaQuery.of(context).size.width * 0.42,
                  height:
                      MediaQuery.of(context).size.height * 0.30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width *
                                0.42,
                        height:
                            MediaQuery.of(context).size.height *
                                0.30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(
                                20), // Image radius
                            child: Image.asset(
                              "images/imgForStoriesOne.jpg",
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width:
                      MediaQuery.of(context).size.width * 0.50,
                  height:
                      MediaQuery.of(context).size.height * 0.30,
                  child: Column(
                    children: [
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height *
                                0.05,
                        width:
                            MediaQuery.of(context).size.width *
                                0.48,
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(docs.data()['name'],
                                style: TextStyle(
                                    fontFamily:
                                        'PlayfairDisplay',
                                    fontSize: 20))
                          ],
                        ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height *
                                0.20,
                        width:
                            MediaQuery.of(context).size.width *
                                0.48,
                        child: Text(
                          docs.data()['description'] ,
                          style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height *
                                0.05,
                        width:
                            MediaQuery.of(context).size.width *
                                0.50,
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context)
                                      .size
                                      .width *
                                  0.15,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(
                                            10),
                                  ),
                                  child: Text(
                                    docs.data()['king'] ?? "",
                                    style: TextStyle(
                                        fontFamily:
                                            'PlayfairDisplay',
                                        fontSize: 14),
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context)
                                      .size
                                      .width *
                                  0.18,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(
                                            10),
                                  ),
                                  child: Text(
                                    docs.data()['gender'] ?? "",
                                    style: TextStyle(
                                        fontFamily:
                                            'PlayfairDisplay',
                                        fontSize: 14),
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context)
                                      .size
                                      .width *
                                  0.15,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(
                                            10),
                                  ),
                                  child: Text(
                                    '${docs["age"] ?? "Empty"}',
                                    style: TextStyle(
                                        fontFamily:
                                            'PlayfairDisplay',
                                        fontSize: 14),
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        back: Card(
          color: const Color.fromARGB(255, 231, 243, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Column(
              children: [
                Row(),
                Row(),
                Row()
              ],
            ),
          ),
        )));
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          docs['name'],
        ),
        subtitle: Text(
          docs['description'],
        ),
        // leading: Image.network(
        //   docs['image'],
        // ),
        trailing: const Icon(Icons.arrow_right),
        tileColor: const Color.fromARGB(200, 229, 242, 255),
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => DataPage(
                title: "Изменить/Удалить",
                docFireBase: docs,
                name: docs['name'],
                description: docs['description'],
                image: docs['image'],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Pets {
  int? id;
  String? name;
  String? kind;
  String? gender;
  int? age;
  String? description;
  String? image;
  Pets({
    this.id,
    this.name,
    this.kind,
    this.gender,
    this.age,
    this.description,
    this.image,
  });
}
