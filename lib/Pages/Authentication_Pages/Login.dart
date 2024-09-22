// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/OtpPage.dart';
import 'package:home_service/Pages/Authentication_Pages/SignUp.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Please Login to your account",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.home,
                          size: 150,
                        ),
                        IntlPhoneField(
                          initialCountryCode: "IN",
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: "Enter mobile number",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Otppage()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ))),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                  thickness: 1,
                                  color: const Color.fromARGB(52, 30, 31, 38)),
                            ),
                            Text(
                              "Or Login With",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                            Expanded(
                              child: Divider(
                                  thickness: 1,
                                  color: const Color.fromARGB(52, 30, 31, 30)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Image.asset(
                                'Asset/icons/ic_google.png',
                                width: 25,
                                height: 25,
                              ),
                            ),
                            SizedBox(width: 60),
                            InkWell(
                              child: Image.asset(
                                'Asset/icons/ic_instagram.png',
                                width: 25,
                                height: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have account?  ",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
