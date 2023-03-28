import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tails_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
          '/home': (context) => const HomePage(),
        } ,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Splash screen необходим для первой загрузочной страницы
      //Взят с pub dev'а
      home: AnimatedSplashScreen(
            duration: 3000,
            splash: "images/cat-whiskers.png",
            nextScreen: const HomePage(),
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.leftToRight,
            backgroundColor: const Color.fromARGB(255, 241, 251, 255)),
    );
  }
}
