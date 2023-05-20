import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tails_app/data.dart';

class PetsDataPage extends StatefulWidget {
  //final String searchText;
  bool? active;
  PetsDataPage({super.key, this.active});
  @override
  State<PetsDataPage> createState() => _PetsDataPageState();
}

class _PetsDataPageState extends State<PetsDataPage> {
  getUser() {
    var user = FirebaseFirestore.instance
        .collection("admins")
        .doc(FirebaseAuth.instance.currentUser!.email.toString())
        .snapshots()
        .listen(
      (datasnapshot) {
        if (datasnapshot.exists) {
          if (!mounted) return;
          setState(
            () {
              widget.active = true;
            },
          );
        } else if (!datasnapshot.exists) {
          if (!mounted) return;
          setState(
            () {
              widget.active = false;
            },
          );
        }
      },
    );
  }

  @override
  Widget editing(context, docs) {
    return FutureBuilder(
        future: getUser(),
        builder: (context, snapshot) {
          return widget.active == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: IconButton(
                        icon: const Icon(Icons.replay),
                        color: const Color.fromARGB(101, 133, 166, 255),
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => DataPage(
                                docFireBase: docs,
                                name: docs['name'],
                                kind: docs['kind'],
                                gender: docs['gender'],
                                age: docs['age'],
                                description: docs['description'],
                                sterilization: docs['sterilization'],
                                treatment: docs['treatment'],
                                vaccination: docs['vaccination'],
                                chipping: docs['chipping'],
                                passport: docs['passport'],
                                image: docs['image'],
                                whatToDo: "Изменить",
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        color: const Color.fromARGB(101, 133, 166, 255),
                        onPressed: () {
                          CollectionReference petsRef =
                              FirebaseFirestore.instance.collection('pets');
                          petsRef.doc(docs.id.toString()).delete();
                        },
                      ),
                      //child: Text(docs.id.toString()),
                    ),
                  ],
                )
              : Row();
        });
    //   if (widget.active == true)
    //   {
    //     return Row(
    //     mainAxisAlignment: MainAxisAlignment.end,
    //     children: [
    //       SizedBox(
    //         width: MediaQuery.of(context).size.width * 0.08,
    //         height: MediaQuery.of(context).size.height * 0.05,
    //         child: IconButton(
    //           icon: const Icon(Icons.replay),
    //           color: const Color.fromARGB(101, 133, 166, 255),
    //           onPressed: () {
    //             Navigator.push(
    //               context,
    //               CupertinoPageRoute(
    //                 builder: (context) => DataPage(
    //                   docFireBase: docs,
    //                   name: docs['name'],
    //                   kind: docs['kind'],
    //                   gender: docs['gender'],
    //                   age: docs['age'],
    //                   description: docs['description'],
    //                   image: docs['image'],
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       ),
    //       SizedBox(
    //         width: MediaQuery.of(context).size.width * 0.15,
    //         height: MediaQuery.of(context).size.height * 0.05,
    //         child: IconButton(
    //           icon: const Icon(Icons.delete),
    //           color: const Color.fromARGB(101, 133, 166, 255),
    //           onPressed: () {},
    //         ),
    //       ),
    //     ],
    //   );
    // }
    // else {
    //   return Row( );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("pets").snapshots(),
      builder: (context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(198, 137, 196, 254),
            ),
          );
        } else {
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
      elevation: 0,
      color: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlipCard(
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        side: CardSide.FRONT,
        front: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ColoredBox(
              color: const Color.fromARGB(255, 231, 243, 255),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: MediaQuery.of(context).size.height * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.42,
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), // Image border
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(20), // Image radius
                                child: Image.network(
                                  docs['image'],
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
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height * 0.30,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  docs.data()['name'] ?? "",
                                  style: const TextStyle(
                                      fontFamily: 'PlayfairDisplay',
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.48,
                            child: Text(
                              docs.data()['description'] ?? "",
                              style: const TextStyle(
                                  fontFamily: 'PlayfairDisplay', fontSize: 12),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      docs.data()['kind'] ?? "",
                                      style: const TextStyle(
                                          fontFamily: 'PlayfairDisplay',
                                          fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      docs.data()['gender'] ?? "",
                                      style: const TextStyle(
                                          fontFamily: 'PlayfairDisplay',
                                          fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      '${docs["age"] ?? "Empty"}',
                                      style: const TextStyle(
                                          fontFamily: 'PlayfairDisplay',
                                          fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
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
          ),
        ),
        back: Card(
          elevation: 5,
          color: const Color.fromARGB(255, 231, 243, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: const Text(
                            "Стерилизация/кастрация:",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Text(
                            docs.data()['sterilization'] ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: const Text(
                            "Обработка от паразитов:",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Text(
                            docs.data()['treatment'] ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: const Text(
                            "Вакцинация:",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Text(
                            docs.data()['vaccination'] ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: const Text(
                            "Чипирование:",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Text(
                            docs.data()['chipping'] ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: const Text(
                            "Ветеринарный паспорт:",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Text(
                            docs.data()['passport'] ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        editing(context, docs)
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.08,
                        //   height: MediaQuery.of(context).size.height * 0.05,
                        //   child: IconButton(
                        //     icon: const Icon(Icons.replay),
                        //     color: const Color.fromARGB(101, 133, 166, 255),
                        //     onPressed: () {
                        //       Navigator.push(
                        //         context,
                        //         CupertinoPageRoute(
                        //           builder: (context) => DataPage(
                        //             docFireBase: docs,
                        //             name: docs['name'],
                        //             kind: docs['kind'],
                        //             gender: docs['gender'],
                        //             age: docs['age'],
                        //             description: docs['description'],
                        //             image: docs['image'],
                        //           ),
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.15,
                        //   height: MediaQuery.of(context).size.height * 0.05,
                        //   child: IconButton(
                        //     icon: const Icon(Icons.delete),
                        //     color: const Color.fromARGB(101, 133, 166, 255),
                        //     onPressed: () {},
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pets {
  int? id;
  dynamic documentFirebase;
  String? name;
  String? kind;
  String? gender;
  String? age;
  String? description;
  String? sterilization;
  String? treatment;
  String? vaccination;
  String? chipping;
  String? passport;
  String? image;
  Pets({
    this.id,
    this.name,
    this.kind,
    this.gender,
    this.age,
    this.description,
    this.sterilization,
    this.treatment,
    this.vaccination,
    this.chipping,
    this.passport,
    this.image,
  });
}
