// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchcontroller = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notification_add_rounded,
            size: 32,
          ),
          SizedBox(
            width: 25,
          ),
          Switch(
              inactiveTrackColor: Colors.white,
              activeTrackColor: Colors.black,
              inactiveThumbColor: Colors.black,
              activeColor: Colors.white,
              value: switchcontroller,
              onChanged: (value) {
                setState(() {
                  switchcontroller = value;
                });
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search for services",
                    filled: true,
                    fillColor: const Color.fromARGB(32, 61, 59, 59),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(29))),
              )),
          SizedBox(
            height: 20,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text("HI")),
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Home Service",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.orange),
                ),
                onPressed: () {},
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.plumbing_rounded,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.electric_bolt,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.format_paint_rounded,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.carpenter,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.cleaning_services_outlined,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.car_repair,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.car_repair_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Home Construction",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.orange),
                ),
                onPressed: () {},
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.construction,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.architecture,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.design_services,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.shelves,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(38, 185, 181, 181)),
                  height: 65,
                  width: 65,
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Service",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.orange),
                ),
                onPressed: () {},
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(37, 255, 255, 255)),
                  height: 150,
                  width: 115,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'Asset/images/plumber.jpg',
                    ),
                  )),
              Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(37, 255, 255, 255)),
                  height: 150,
                  width: 115,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'Asset/images/plumber.jpg',
                    ),
                  )),
              Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(37, 255, 255, 255)),
                  height: 150,
                  width: 115,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'Asset/images/plumber.jpg',
                    ),
                  )),
              Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(37, 255, 255, 255)),
                  height: 150,
                  width: 115,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'Asset/images/plumber.jpg',
                    ),
                  )),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Renovate Your home",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.orange),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                  margin: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(37, 255, 255, 255)),
                  height: 100,
                  width: 150,
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'Asset/images/plumber.jpg',
                      ),
                    ),
                    Text("Home Interiots"),
                  ])),
              Row(children: [
                Container(
                    margin: EdgeInsetsDirectional.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(37, 255, 255, 255)),
                    height: 100,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'Asset/images/plumber.jpg',
                      ),
                    )),
              ]),
              Row(children: [
                Container(
                    margin: EdgeInsetsDirectional.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(37, 255, 255, 255)),
                    height: 100,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'Asset/images/plumber.jpg',
                      ),
                    )),
              ]),
              Row(children: [
                Container(
                    margin: EdgeInsetsDirectional.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(37, 255, 255, 255)),
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'Asset/images/plumber.jpg',
                      ),
                    )),
              ]),
            ]),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Combos And Subscription",
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //     ),
          //     TextButton(
          //       child: Text(
          //         "View All",
          //         style: TextStyle(color: Colors.orange),
          //       ),
          //       onPressed: () {},
          //     ),
          //   ],
          // ),
        ]),
      ),
    );
  }
}
