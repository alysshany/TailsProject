import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:tails_app/pets_data.dart';

class DataPage extends StatefulWidget {
  dynamic docFireBase;
  String? title;
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
  String? whatToDo;

  DataPage(
      {Key? key,
      this.docFireBase,
      this.title,
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
      this.whatToDo})
      : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController kindController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController sterilizationController = TextEditingController();
  TextEditingController treatmentController = TextEditingController();
  TextEditingController vaccinationController = TextEditingController();
  TextEditingController chippingController = TextEditingController();
  TextEditingController passportController = TextEditingController();

  Pets pets = Pets();

  // Future selectFile() async {
  //   final result = (await FilePicker.platform.pickFiles())?.files.first;
  //   final path = 'files/${result!.name}';
  //   final file = File(result!.path!);

  //   final ref = FirebaseStorage.instance.ref().child(path);
  //   var uploadTask = ref.putFile(file);

  //   final snapshot = await uploadTask!.whenComplete(() {});

  //   final urlDownload = await snapshot.ref.getDownloadURL();
  // }

  // Future<void> _pickImage(ImageSource source) async {
  //   final pickedFile = await ImagePicker().pickImage(source: source);

  //   if (pickedFile != null) {
  //     // Do something with the image file.
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    bool imageTwest() {
      bool image = false;
      if (widget.image == null) {
        image = true;
      } else {
        image = false;
      }
      return image;
    }

    if (widget.name != null ||
        widget.kind != null ||
        widget.gender != null ||
        widget.age != null ||
        widget.description != null ||
        widget.image != null ||
        widget.sterilization != null ||
        widget.treatment != null ||
        widget.vaccination != null ||
        widget.chipping != null ||
        widget.passport != null) {
      nameController.text = widget.name.toString();
      kindController.text = widget.kind.toString();
      genderController.text = widget.gender.toString();
      ageController.text = widget.age.toString();
      descriptionController.text = widget.description.toString();
      imageController.text = widget.image.toString();
      sterilizationController.text = widget.sterilization.toString();
      treatmentController.text = widget.treatment.toString();
      vaccinationController.text = widget.vaccination.toString();
      chippingController.text = widget.chipping.toString();
      passportController.text = widget.passport.toString();
    }
    return Scaffold(
      //extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: const Color.fromARGB(255, 241, 251, 255),
        onTap: (int val) {},
        currentIndex: -1,
        items: [
          FloatingNavbarItem(
            customWidget: SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.width * 0.18,
              child: Card(
                color: const Color.fromARGB(200, 229, 242, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(Icons.update),
                  color: const Color.fromARGB(100, 0, 0, 0),
                  onPressed: () async {
                    CollectionReference petsRef =
                        FirebaseFirestore.instance.collection('pets');
                    await petsRef.doc(widget.docFireBase.id).update(
                      {
                        'name': pets.name,
                        'kind': pets.kind,
                        'gender': pets.gender,
                        'age': pets.age,
                        'description': pets.description,
                        'image': pets.image,
                        'sterilization': pets.sterilization,
                        'treatment': pets.treatment,
                        'vaccination': pets.vaccination,
                        'chipping': pets.chipping,
                        'passport': pets.passport
                      },
                    );
                    nameController.clear();
                    kindController.clear();
                    genderController.clear();
                    ageController.clear();
                    descriptionController.clear();
                    imageController.clear();
                    sterilizationController.clear();
                    treatmentController.clear();
                    vaccinationController.clear();
                    chippingController.clear();
                    passportController.clear();
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
          widget.whatToDo == "Изменить"
              ? FloatingNavbarItem(
                  customWidget: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.width * 0.18,
                    child: Card(
                      color: const Color.fromARGB(200, 229, 242, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.update),
                        color: const Color.fromARGB(100, 0, 0, 0),
                        onPressed: () async {
                          CollectionReference petsRef =
                              FirebaseFirestore.instance.collection('pets');
                          await petsRef.doc(widget.docFireBase.id).update(
                            {
                              'name': pets.name,
                              'kind': pets.kind,
                              'gender': pets.gender,
                              'age': pets.age,
                              'description': pets.description,
                              'image': pets.image,
                              'sterilization': pets.sterilization,
                              'treatment': pets.treatment,
                              'vaccination': pets.vaccination,
                              'chipping': pets.chipping,
                              'passport': pets.passport
                            },
                          );
                          nameController.clear();
                          kindController.clear();
                          genderController.clear();
                          ageController.clear();
                          descriptionController.clear();
                          imageController.clear();
                          sterilizationController.clear();
                          treatmentController.clear();
                          vaccinationController.clear();
                          chippingController.clear();
                          passportController.clear();
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                )
              : FloatingNavbarItem(
                  customWidget: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.width * 0.18,
                    child: Card(
                      color: const Color.fromARGB(200, 229, 242, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        color: const Color.fromARGB(100, 0, 0, 0),
                        onPressed: () async {
                          pets.name = nameController.text;
                          pets.kind = kindController.text;
                          pets.gender = genderController.text;
                          pets.age = ageController.text;
                          pets.description = descriptionController.text;
                          pets.image = imageController.text;
                          pets.sterilization = sterilizationController.text;
                          pets.treatment = treatmentController.text;
                          pets.vaccination = vaccinationController.text;
                          pets.chipping = chippingController.text;
                          pets.passport = passportController.text;
                          CollectionReference petsRef =
                              FirebaseFirestore.instance.collection('pets');
                          await petsRef.add(
                            {
                              'name': pets.name,
                              'kind': pets.kind,
                              'gender': pets.gender,
                              'age': pets.age,
                              'description': pets.description,
                              'image': pets.image,
                              'sterilization': pets.sterilization,
                              'treatment': pets.treatment,
                              'vaccination': pets.vaccination,
                              'chipping': pets.chipping,
                              'passport': pets.passport
                            },
                          );
                          nameController.clear();
                          kindController.clear();
                          genderController.clear();
                          ageController.clear();
                          descriptionController.clear();
                          imageController.clear();
                          sterilizationController.clear();
                          treatmentController.clear();
                          vaccinationController.clear();
                          chippingController.clear();
                          passportController.clear();
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                )
          // FloatingNavbarItem(
          //   customWidget: SizedBox(
          //     width: MediaQuery.of(context).size.width * 0.20,
          //     height: MediaQuery.of(context).size.width * 0.18,
          //     child: Card(
          //       color: const Color.fromARGB(200, 229, 242, 255),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       child: IconButton(
          //         icon: const Icon(Icons.delete),
          //         color: const Color.fromARGB(100, 0, 0, 0),
          //         onPressed: () async {
          //           CollectionReference petsRef =
          //               FirebaseFirestore.instance.collection('pets');
          //           await petsRef.doc(widget.docFireBase.id).update(
          //             {
          //               'name': pets.name,
          //               'kind': pets.kind,
          //               'gender': pets.gender,
          //               'age': pets.age,
          //               'description': pets.description,
          //               'image': pets.image,
          //             },
          //           );
          //           nameController.clear();
          //           kindController.clear();
          //           genderController.clear();
          //           ageController.clear();
          //           descriptionController.clear();
          //           imageController.clear();
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        "Имя",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: nameController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text("Вид",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                          )),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: kindController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        "Пол",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: genderController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        "Возраст",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: ageController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        "Описание",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: descriptionController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text("Стерилизация/кастрация (Да/Нет)",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                          )),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: sterilizationController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text("Обработка от паразитов (Да/Нет)",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                          )),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: treatmentController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text("Вакцинация (Да/Нет)",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                          )),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: vaccinationController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text("Чипирование (Да/Нет)",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                          )),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: chippingController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 231, 243, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text("Ветеринарный паспорт (Да/Нет)",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                          )),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 231, 243, 255),
                        ),
                      ),
                    ),
                    controller: passportController,
                    cursorColor: const Color.fromARGB(101, 133, 166, 255),
                  ),
                ),
                Card(
                    color: const Color.fromARGB(255, 231, 243, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 10,
                    child: ElevatedButton(
                      onPressed: () {
                        //selectFile;
                        //_pickImage(ImageSource.gallery);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Добавить картинку"),
                          Icon(Icons.add),
                        ],
                      ),
                    ))
                // TextField(
                //   decoration: InputDecoration(
                //     label: const Text(
                //       "Фото",
                //       style: TextStyle(
                //         fontFamily: 'PlayfairDisplay',
                //       ),
                //     ),
                //     labelStyle: const TextStyle(
                //       color: Color.fromARGB(100, 0, 0, 0),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(15),
                //       borderSide: const BorderSide(
                //         color: Color.fromARGB(255, 231, 243, 255),
                //       ),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(15),
                //       borderSide: const BorderSide(
                //         color: Color.fromARGB(255, 231, 243, 255),
                //       ),
                //     ),
                //   ),
                //   controller: imageController,
                //   cursorColor: const Color.fromARGB(101, 133, 166, 255),
                // ),
                //),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.02,
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.08,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       foregroundColor: const Color.fromARGB(101, 133, 166, 255),
                //       backgroundColor: const Color.fromARGB(200, 229, 242, 255),
                //     ),
                //     onPressed: () async {
                //       pets.name = nameController.text;
                //       pets.kind = kindController.text;
                //       pets.gender = genderController.text;
                //       pets.age = ageController.text;
                //       pets.description = descriptionController.text;
                //       pets.image = imageController.text;
                //       CollectionReference petsRef =
                //           FirebaseFirestore.instance.collection('pets');
                //       await petsRef.add(
                //         {
                //           'name': pets.name,
                //           'kind': pets.kind,
                //           'gender': pets.gender,
                //           'age': pets.age,
                //           'description': pets.description,
                //           'image': pets.image,
                //         },
                //       );
                //       nameController.clear();
                //       kindController.clear();
                //       genderController.clear();
                //       ageController.clear();
                //       descriptionController.clear();
                //       imageController.clear();
                //       Navigator.pop(context);
                //     },
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: const [
                //         Text("Добавить"),
                //         Icon(Icons.add),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.01,
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.08,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       foregroundColor: const Color.fromARGB(101, 133, 166, 255),
                //       backgroundColor: const Color.fromARGB(200, 229, 242, 255),
                //     ),
                //     onPressed: () async {
                //       CollectionReference petsRef =
                //           FirebaseFirestore.instance.collection('pets');
                //       await petsRef.doc(widget.docFireBase.id).update(
                //         {
                //           'name': pets.name,
                //           'kind': pets.kind,
                //           'gender': pets.gender,
                //           'age': pets.age,
                //           'description': pets.description,
                //           'image': pets.image,
                //         },
                //       );
                //       nameController.clear();
                //       kindController.clear();
                //       genderController.clear();
                //       ageController.clear();
                //       descriptionController.clear();
                //       imageController.clear();
                //       Navigator.pop(context);
                //     },
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: const [
                //         Text("Обновить"),
                //         Icon(Icons.update),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.01,
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.08,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       foregroundColor: const Color.fromARGB(101, 133, 166, 255),
                //       backgroundColor: const Color.fromARGB(200, 229, 242, 255),
                //     ),
                //     onPressed: () async {
                //       // CollectionReference petsRef =
                //       //     FirebaseFirestore.instance.collection('pets');
                //       // await petsRef.doc(widget.docFireBase.id).delete();
                //       nameController.clear();
                //       kindController.clear();
                //       genderController.clear();
                //       ageController.clear();
                //       descriptionController.clear();
                //       imageController.clear();
                //       Navigator.pop(context);
                //     },
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: const [
                //         Text("Удалить"),
                //         Icon(Icons.delete),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
