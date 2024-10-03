import 'package:flutter/material.dart';
import 'package:home_service/Pages/home.dart';

class Otppage extends StatefulWidget {
  const Otppage({super.key});

  @override
  State<Otppage> createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "OTP Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  " We have send to your mobile number ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(200, 158, 158, 158),
                      letterSpacing: 1,
                      wordSpacing: 1),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 16),
                        padding:
                            const EdgeInsets.only(left: 9, right: 2, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(17, 34, 33, 33)),
                        height: 70,
                        width: 70,
                        child: const TextField(
                            style: TextStyle(fontSize: 26),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)))),
                    Container(
                        margin: const EdgeInsets.only(right: 16),
                        padding:
                            const EdgeInsets.only(left: 9, right: 2, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(17, 34, 33, 33)),
                        height: 70,
                        width: 70,
                        child: const TextField(
                            style: TextStyle(fontSize: 26),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)))),
                    Container(
                        margin: const EdgeInsets.only(right: 16),
                        padding:
                            const EdgeInsets.only(left: 9, right: 2, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(17, 34, 33, 33)),
                        height: 70,
                        width: 70,
                        child: const TextField(
                            style: TextStyle(fontSize: 26),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)))),
                    Container(
                        padding:
                            const EdgeInsets.only(left: 9, right: 2, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(17, 34, 33, 33)),
                        height: 70,
                        width: 70,
                        child: const TextField(
                            style: TextStyle(fontSize: 26),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)))),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Didn't receive OTP",
                    style: TextStyle(
                        color: Color.fromARGB(59, 0, 0, 0), fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend OTP",
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ))
                ]),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => const HomeScreen()));
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
