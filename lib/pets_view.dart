import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child:
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Card(
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
                                        size:
                                            const Size.fromRadius(20), // Image radius
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
                                        Text("Игорь)", style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 20))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.20,
                                    width: MediaQuery.of(context).size.width * 0.48,
                                      child: 
                                        Text("Настоящий мужчина и обладатель самых шикарных щечек в приюте.Таких котиков сразу, как только увидите, хочется потискать, погладить. Ну как пройти мимо таких шикарных белых щечек и не почесать их?", style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 12),
                                        textAlign: TextAlign.center,)
                                      
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.05,
                                    width: MediaQuery.of(context).size.width * 0.50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget> [
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width * 0.15,
                                            child:
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Text("Кот", style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14), textAlign: TextAlign.center ,)
                                              ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width * 0.18,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Text("Мальчик", style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14), textAlign: TextAlign.center,)
                                              ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width * 0.15,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Text("3 года", style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 14), textAlign: TextAlign.center,)
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
                    back: Card(
                      color: const Color.fromARGB(255, 231, 243, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(),
                    ),
                  ),
                ),
              ),
            ],
          );
          },
          ),
          ),
      ),
    );
  }
}
