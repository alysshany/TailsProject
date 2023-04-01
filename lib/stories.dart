import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget> [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                  elevation: 0,
                  child: FlipCard(
                    fill: Fill.fillBack, 
                    direction: FlipDirection.HORIZONTAL, 
                    side: CardSide.FRONT, 
                    front:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: 
                      Image.asset("img/imgForStoriesOne.jpg", 
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter, 
                        ),
                      ),
                    back: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      child: const Center(
                        child: Text(
                        "Посмотрите, как преобразился Рыжик! Теперь этот красавец живет дома благодаря проекту «Хвостики». Мы уверены, что это только начало счастливой, теплой, уютной, а главное —домашней жизни!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 18),
                        ),
                      )
                    )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                  
                  elevation: 0,
                  child: FlipCard(
                    fill: Fill.fillBack, 
                    direction: FlipDirection.HORIZONTAL,
                    side: CardSide.FRONT,
                    front:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: 
                      Image.asset("img/imgForStoriesOne.jpg", 
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter, 
                        ),
                      ),
                    back: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      child: const Center(
                        child: Text(
                        "Посмотрите, как преобразился Рыжик! Теперь этот красавец живет дома благодаря проекту «Хвостики». Мы уверены, что это только начало счастливой, теплой, уютной, а главное —домашней жизни!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 18,),
                        ),
                      )
                    )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                  elevation: 0,
                  child: FlipCard(
                    fill: Fill.fillBack, 
                    direction: FlipDirection.HORIZONTAL, 
                    side: CardSide.FRONT, 
                    front:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: 
                      Image.asset("img/imgForStoriesOne.jpg", 
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter, 
                        ),
                      ),
                    back: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      child: const Center(
                        child: Text(
                        "Посмотрите, как преобразился Рыжик! Теперь этот красавец живет дома благодаря проекту «Хвостики». Мы уверены, что это только начало счастливой, теплой, уютной, а главное —домашней жизни!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 18),
                        ),
                      )
                    )
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}