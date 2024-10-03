import 'package:count_button/count_button.dart';
import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/Order_Summary.dart';

class Bathroomsummary extends StatefulWidget {
  const Bathroomsummary({super.key});

  @override
  State<Bathroomsummary> createState() => _BathroomsummaryState();
}

int Countvalue = 1;

class _BathroomsummaryState extends State<Bathroomsummary> {
  final _couponController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: const Text(
          "Order Summery ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(bottom: 20, top: 10),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      height: 100,
                      width: 100,
                      "Asset/cleaning_Service/Bathroom_Cleaning.jpeg",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Center(
                      child: Column(
                    children: [
                      Text(
                        "Full House Cleaning",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "John Cleaning Service",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.schedule,
                            color: Colors.grey,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "7:15 AM",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " on",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Thursday",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 18,
                          )
                        ],
                      )
                    ],
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      CountButton(
                          buttonSize: const Size(30, 30),
                          backgroundColor: const Color.fromARGB(207, 0, 0, 0),
                          foregroundColor: Colors.white,
                          minValue: 1,
                          maxValue: 99,
                          selectedValue: Countvalue,
                          onChanged: (value) {
                            setState(() {
                              Countvalue = value;
                            });
                          }),
                      const SizedBox(
                        height: 19,
                      ),
                      const Text(
                        "₹1120",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.location_on),
                  Column(
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2nd Street, Shushruthi Nagar.E City",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Icon(Icons.edit)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(right: 30, top: 20),
              child: Row(
                children: [
                  const Icon(Icons.content_paste),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Apply Coupon",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: _couponController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter coupon code',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a coupon code';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    " ₹1120",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 0, 0, 0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    r"$1120",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderSummary()));
                    },
                    child: const Text(
                      "Procced to Pay",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
