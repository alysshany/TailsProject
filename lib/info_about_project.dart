import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutProjectPage extends StatefulWidget {
  const AboutProjectPage({super.key});

  @override
  State<AboutProjectPage> createState() => _AboutProjectPageState();
}

class _AboutProjectPageState extends State<AboutProjectPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {

    final pages = [
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 168, 212, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(16),
              //   color: Colors.grey.shade300,
              // ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: const SizedBox(
                child: Center(
                    child: Text(
                  "Page ",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ),
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 168, 212, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(16),
              //   color: Colors.grey.shade300,
              // ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: const SizedBox(
                child: Center(
                    child: Text(
                  "Page ",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ),
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 168, 212, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(16),
              //   color: Colors.grey.shade300,
              // ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: const SizedBox(
                child: Center(
                    child: Text(
                  "Page ",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ),
            Card(
              elevation: 10,
              color: const Color.fromARGB(255, 168, 212, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(16),
              //   color: Color.fromARGB(255, 255, 255, 255),
              // ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 30),
              child: const SizedBox(
                child: Center(
                    child: Text(
                  "Page ",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            )];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14
              ),
            ],
          ),
        ),
      ),
    );
  }
}