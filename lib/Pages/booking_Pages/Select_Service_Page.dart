import 'package:flutter/material.dart';
import 'package:home_service/Pages/booking_Pages/Booking_Selection/Bathroom_Selection.dart';
import 'package:home_service/Pages/booking_Pages/Booking_Selection/Carpet_Selection.dart';
import 'package:home_service/Pages/booking_Pages/Booking_Selection/Kitchen_Selection.dart';
import 'package:home_service/Pages/booking_Pages/Booking_Selection/Sofa_Cleaning_.dart';
import 'package:home_service/Pages/booking_Pages/Booking_Selection/full_house.dart';

class SelectServicePage extends StatefulWidget {
  const SelectServicePage({super.key});

  @override
  State<SelectServicePage> createState() => _SelectServicePageState();
}

DateTime? selectedDate;
TimeOfDay? selectedTime;

class _SelectServicePageState extends State<SelectServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "Asset/cleaning_Service/room.jpg",
                        ))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          )),
                    )
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (const sofaSelection())));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "Asset/cleaning_Service/Sofa_Cleaning.jpeg",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Sofa Cleaning",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs750 onwards",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(143, 0, 0, 0)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const KitchenSelection()));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "Asset/images/Modualr_kitchen.jpeg",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Kitchen Cleaning",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs1000 onwards",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(143, 0, 0, 0)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BathroomSelection()));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "Asset/cleaning_Service/Bathroom_Cleaning.jpeg",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Bathroom Cleaning",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs1250 onwards",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(143, 0, 0, 0)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CarpetSelection()));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "Asset/cleaning_Service/Carpet_Cleaning.jpeg",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Carpet Cleaning",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs750 onwards",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(143, 0, 0, 0)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FullHouse()));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "Asset/cleaning_Service/home.jpg",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Full House",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs1000 onwards",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(143, 0, 0, 0)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color.fromARGB(22, 151, 150, 150)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 120,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            iconColor: Colors.black,
                            side: const BorderSide(
                                width: 1, color: Colors.black)),
                        onPressed: () {},
                        child: const Icon(Icons.message),
                      )),
                  SizedBox(
                      width: 120,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            iconColor: Colors.black,
                            side: const BorderSide(
                                width: 1, color: Colors.black)),
                        child: const Text(
                          "Book",
                          style: TextStyle(color: Colors.black),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
