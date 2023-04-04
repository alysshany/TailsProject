import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tails_app/auth/auth.dart';
import 'package:tails_app/auth/model.dart';
import 'package:tails_app/data.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;
    return check ? DataPage() : const AuthPage();
  }
}
