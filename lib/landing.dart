import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tails_app/auth/auth.dart';
import 'package:tails_app/auth/model.dart';
import 'package:tails_app/first.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;
    return check ? const FirstViewPage() : const AuthPage();
  }
}
