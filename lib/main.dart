import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:tails_app/articleInfo.dart';
import 'package:tails_app/articles.dart';
import 'package:tails_app/auth/service.dart';
import 'package:tails_app/contacts.dart';
import 'package:tails_app/data.dart';
import 'package:tails_app/first.dart';
import 'package:tails_app/home.dart';
import 'package:tails_app/info_about_project.dart';
import 'package:tails_app/landing.dart';
import 'package:tails_app/personal.dart';
import 'package:tails_app/pick_up_the_pet.dart';
import 'package:tails_app/stories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices().currentUser,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const HomePage(),
          '/auth': (context) => const LandingPage(),
          '/data': (context) => DataPage(),
          '/stories': (context) => const StoriesPage(),
          '/pickPet': (context) => const PickUpPage(),
          '/projectInfo': (context) => const AboutProjectPage(),
          '/firstView': (context) => const FirstViewPage(),
          '/personal': (context) => const PersonalPage(),
          '/contacts': (context) => const ContactsPage(),
          '/articles': (context) => const ArticlesPage(),
          '/articleInfo': (context) => const ArticleInfoPage()
        },
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: "images/cat-whiskers.png",
          nextScreen: const HomePage(),
          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        // theme: ThemeData(
        //   scaffoldBackgroundColor: const Color.fromARGB(200, 229, 242, 255),
        // ),
      ),
    );
  }
}
