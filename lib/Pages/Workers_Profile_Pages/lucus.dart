import 'package:flutter/material.dart';
import 'package:home_service/Pages/booking_Pages/Select_Service_Page.dart';

class LucuspaageProfile extends StatefulWidget {
  const LucuspaageProfile({super.key});

  @override
  State<LucuspaageProfile> createState() => LucuspaageProfileState();
}

class LucuspaageProfileState extends State<LucuspaageProfile> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 1, right: 1, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Lucas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 16.0, left: 16, right: 16, bottom: 40),
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("Asset/images/Lucas.jpeg")),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "jobs",
                            style: TextStyle(
                                color: Color.fromARGB(213, 39, 39, 39),
                                fontSize: 18),
                          ),
                          Text(
                            "share",
                            style: TextStyle(
                                color: Color.fromARGB(213, 39, 39, 39),
                                fontSize: 18),
                          ),
                          Text(
                            "Rating",
                            style: TextStyle(
                                color: Color.fromARGB(213, 39, 39, 39),
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "120",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 22),
                          ),
                          const Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "4.5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 22),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite,
                              color: isLiked ? Colors.red : Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Project",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style:
                            TextStyle(color: Colors.yellow[800], fontSize: 16),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Row(children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsetsDirectional.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(249, 255, 250, 250)),
                          height: 100,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              'Asset/images/Comerial_Building.jpeg',
                            ),
                          )),
                      const Text(
                        "Commericial Buildings",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ]),
                Row(children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsetsDirectional.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(37, 255, 255, 255)),
                          height: 100,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              'Asset/images/Office_Interior.jpeg',
                            ),
                          )),
                      const Text(
                        "Office Interior",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ]),
                Row(children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsetsDirectional.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(37, 255, 255, 255)),
                          height: 100,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              'Asset/images/Modualr_kitchen.jpeg',
                            ),
                          )),
                      const Text(
                        "Modular Kitchen",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ]),
                Row(children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsetsDirectional.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(37, 255, 255, 255)),
                          height: 100,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              'Asset/images/Home_Interior.jpeg',
                            ),
                          )),
                      const Text(
                        "Home Interior",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ]),
              ]),
            ),
            const Spacer(),
            Container(
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SelectServicePage()));
                        },
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
