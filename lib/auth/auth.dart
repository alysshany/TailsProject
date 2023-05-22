import 'package:flutter/material.dart';
import 'package:tails_app/auth/model.dart';
import 'package:tails_app/auth/service.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isSign = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String title = 'АВТОРИЗАЦИЯ';
  AuthServices authServices = AuthServices();

  signIn() async {
    UserModel? user = await authServices.signIn(
        emailController.text, passwordController.text);
    return user;
  }

  signUp() async {
    UserModel? user = await authServices.signUp(
        emailController.text, passwordController.text);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.50,
          width: MediaQuery.of(context).size.width * 0.90,
          child: Card(
            elevation: 5,
            color: const Color.fromARGB(255, 231, 243, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color.fromARGB(159, 52, 72, 102),
                            fontFamily: 'PlayfairDisplay',
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        style: const TextStyle(
                          color: Color.fromARGB(159, 52, 72, 102),
                        ),
                        controller: emailController,
                        cursorColor: const Color.fromARGB(159, 188, 217, 255),
                        decoration: InputDecoration(
                          label: const Text(
                            "Логин",
                          ),
                          labelStyle: const TextStyle(
                            color: Color.fromARGB(159, 52, 72, 102),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(159, 52, 72, 102),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(159, 52, 72, 102),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_person,
                            color: Color.fromARGB(159, 52, 72, 102),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        style: const TextStyle(
                          color: Color.fromARGB(159, 52, 72, 102),
                        ),
                        obscureText: true,
                        controller: passwordController,
                        cursorColor: const Color.fromARGB(159, 188, 217, 255),
                        decoration: InputDecoration(
                          label: const Text(
                            "Пароль",
                          ),
                          labelStyle: const TextStyle(
                            color: Color.fromARGB(159, 52, 72, 102),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(159, 52, 72, 102),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(159, 52, 72, 102),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_person,
                            color: Color.fromARGB(159, 52, 72, 102),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(159, 113, 142, 185),
                          ),
                        ),
                        onPressed: () {
                          isSign ? signUp() : signIn();
                        },
                        child: isSign
                            ? const Text(
                                'Зарегистрироваться',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 231, 243, 255),
                                ),
                              )
                            : const Text(
                                'Войти',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 231, 243, 255),
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            isSign = !isSign;
                            if (isSign) {
                              title = 'РЕГИСТРАЦИЯ';
                            } else {
                              title = 'АВТОРИЗАЦИЯ';
                            }
                          },
                        );
                      },
                      child: isSign
                          ? const Text(
                              'Авторизоваться',
                              style: TextStyle(
                                color: Color.fromARGB(159, 113, 142, 185),
                              ),
                            )
                          : const Text(
                              'Нет аккаунта?',
                              style: TextStyle(
                                color: Color.fromARGB(159, 113, 142, 185),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
