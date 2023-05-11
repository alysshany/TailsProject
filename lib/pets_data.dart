import 'package:cloud_firestore/cloud_firestore.dart';
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
        } else {
          // var list = snapshot.data.docs
          //     .where((x) => x['name']
          //             .toLowerCase()
          //             .contains(widget.searchText.toLowerCase())
          //         ? true
          //         : false)
          //     .toList();
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
        leading: Image.network(
          docs['image'],
        ),
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
  String? age;
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
