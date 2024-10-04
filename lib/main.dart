import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/Login.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
  }
}
