// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookly/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //set background image
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Group 4034.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text("Welcome to Bookly",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF3F3ED))),
              SizedBox(
                height: 185,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //make shadow
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3ED),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -8,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),

                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    //make shadow
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3ED),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -8,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        hintText: 'Password',
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 25,
                            height: 30,
                            child: Checkbox(
                              value: true,
                              onChanged: (value) {},
                              activeColor: Color(0xFFEDCA71),
                              checkColor: Color(0xFFF3F3ED),
                            ),
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFF3F3ED),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFF3F3ED),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFEDCA71),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -8,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Center(
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
