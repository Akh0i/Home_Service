import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/bookinghistory.dart';
import 'package:home_service/Pages/Authentication_Pages/profile.dart';
import 'package:home_service/Pages/Authentication_Pages/search.dart';
import 'package:home_service/Pages/home.dart'; // Importing home.dart file

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int selection = 0;

  // List of widgets for each bottom navigation item
  static final List<Widget> widgetOption = <Widget>[
    HomeScreen(), // Your HomeScreen widget from home.dart
    ServiceSearchPage(),
    BookingsPage(),
    AccountApp(),
  ];

  void onTapped(int index) {
    setState(() {
      selection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOption.elementAt(selection)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(61, 104, 101, 101),
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Booking",
            icon: Icon(Icons.book_online),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: selection, // Maintain the current index for selection
        onTap: onTapped,
        selectedItemColor: const Color.fromARGB(255, 24, 23, 23),
      ),
    );
  }
}
