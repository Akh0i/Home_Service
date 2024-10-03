import 'package:flutter/material.dart';
import 'package:home_service/Pages/Authentication_Pages/Login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUpPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phnnumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  bool CheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    " SignUp",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5, left: 20),
                        labelText: "Username",
                        labelStyle: const TextStyle(
                            fontSize: 18, color: Color.fromARGB(70, 0, 0, 0)),
                        filled: true,
                        fillColor: const Color.fromARGB(20, 94, 93, 93),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5, left: 20),
                        labelText: "Email",
                        labelStyle: const TextStyle(
                            fontSize: 18, color: Color.fromARGB(70, 0, 0, 0)),
                        filled: true,
                        fillColor: const Color.fromARGB(20, 94, 93, 93),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5, left: 20),
                        labelText: "Mobile Number",
                        labelStyle: const TextStyle(
                            fontSize: 18, color: Color.fromARGB(70, 0, 0, 0)),
                        filled: true,
                        fillColor: const Color.fromARGB(20, 94, 93, 93),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5, left: 20),
                        labelText: "Password",
                        labelStyle: const TextStyle(
                            fontSize: 18, color: Color.fromARGB(70, 0, 0, 0)),
                        filled: true,
                        fillColor: const Color.fromARGB(20, 94, 93, 93),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5, left: 20),
                        labelText: "Re-enter Password",
                        labelStyle: const TextStyle(
                            fontSize: 18, color: Color.fromARGB(70, 0, 0, 0)),
                        filled: true,
                        fillColor: const Color.fromARGB(20, 94, 93, 93),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: CheckBox,
                          onChanged: (value) {
                            setState(() {
                              CheckBox = value!;
                            });
                          }),
                      const Text(" I agree to the Terms and Conditions"),
                    ],
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account "),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
