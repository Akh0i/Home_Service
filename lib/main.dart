import 'package:flutter/material.dart';
import 'package:home_service/Pages/bottom%20.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: BottomNavigator()));
  }
}
