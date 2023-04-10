import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tails_app/data.dart';

class PetsPage extends StatefulWidget {
  final String searchText;
  const PetsPage({super.key, required this.searchText});

  @override
  State<PetsPage> createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //stream: FirebaseFirestore.instance.collection("pets").snapshots(),
      builder: (context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        } else {
          var list = snapshot.data.docs
              .where((x) => x['name']
                      .toLowerCase()
                      .contains(widget.searchText.toLowerCase())
                  ? true
                  : false)
              .toList();
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) => buildList(context, list[index]),
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
