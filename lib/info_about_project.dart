import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutProjectPage extends StatefulWidget {
  const AboutProjectPage({super.key});

  @override
  State<AboutProjectPage> createState() => _AboutProjectPageState();
}

class _AboutProjectPageState extends State<AboutProjectPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  bool showButton = false;

  @override
  Widget build(BuildContext context) {


    final pages = [
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 231, 243, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: Column(
                children: <Widget> 
                [
                  Container(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      child: DropShadow(
                        blurRadius: 20,
                        borderRadius: 15,
                        child: Image.asset("images/paws.png"),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "О проекте",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    )
                  ), 
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Миссия проекта - формирование культуры ответственного отношения к домашним животным. Решение взять кошку или собаку из приюта должно быть осознанным, именно поэтому мы помогаем потенциальным владельцам не только найти питомца, но и подготовиться к жизни с новым другом: приобрести необходимые знания, пройти собеседование с куратором, получить поддержку от организаторов проекта.",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ),
                ]
              ),
            ),
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 231, 243, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(16),
              //   color: Colors.grey.shade300,
              // ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: Column(
                children: <Widget> 
                [
                  Container(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      child: DropShadow(
                        blurRadius: 20,
                        borderRadius: 15,
                        child: Image.asset("images/paws.png"),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Расскажи о нас друзьям!",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    )
                  ), 
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    margin:  const EdgeInsets.symmetric(horizontal: 10.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Информационная поддержка и участие в мероприятиях помогут кошкам и собакам из приютов встретить своего человека. Узнайте, в активностях какого приюта вы можете принять участие!",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ),
                ]
              ),
            ),
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 231, 243, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(16),
              //   color: Color.fromARGB(255, 255, 255, 255),
              // ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: Column(
                children: <Widget> 
                [
                  Container(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      child: DropShadow(
                        blurRadius: 20,
                        borderRadius: 15,
                        child: Image.asset("images/paws.png"),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Приезжай в гости!",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    )
                  ), 
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    margin:  const EdgeInsets.symmetric(horizontal: 10.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Собакам и кошкам очень важно общение с человеком – социальные навыки помогут им быстрее найти хозяина. Приезжайте поиграть, погулять и просто погладить питомцев!",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ),
                ]
              ),
            ),
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 231, 243, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: Column(
                children: <Widget> 
                [
                  Container(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      child: DropShadow(
                        blurRadius: 20,
                        borderRadius: 15,
                        child: Image.asset("images/paws.png"),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Будь другом, подари!",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    )
                  ), 
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    margin:  const EdgeInsets.symmetric(horizontal: 10.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Игрушки, одноразовые пеленки, медикаменты, корма, моющие средства и многое другое нужно животным каждый день. Узнайте, чего не хватает питомцам в ближайшем к вам приюте!",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ),
                ]
              ),
            )];
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.80,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    showButton = true;
                    return pages[index % pages.length];
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: const ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Color.fromARGB(255, 168, 212, 255),
                    dotColor: Color.fromARGB(255, 230, 243, 255),
                  )),
            ],
          ),
        ),
      floatingActionButton: 
      AnimatedOpacity( 
        duration: const Duration(milliseconds: 400), 
        opacity: showButton ? 1 : 0, 
        child: FloatingActionButton(
          
          onPressed: () {
            Navigator.pushNamed(context, '/auth');
          },
          backgroundColor: const Color.fromARGB(199, 123, 189, 255),
          child: const Icon(Icons.navigate_next),
        ),
      )
    );
    
  }
}