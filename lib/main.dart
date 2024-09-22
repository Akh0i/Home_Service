import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/Login.dart';
import 'package:home_service/Pages/Authentication_Pages/OtpPage.dart';
import 'package:home_service/Pages/Authentication_Pages/SignUp.dart';

import 'package:home_service/Pages/home.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
  }
}
