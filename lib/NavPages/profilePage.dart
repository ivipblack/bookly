// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
            child: Container(
                // make border radius to 50 for container
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                      spreadRadius: -9,
                    ),
                  ],
                  color: Color(0xFFF3F3ED),
                ),
                child: Container(
                  width: width,
                  // make border radius to 50 for container
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.09,
                        ),
                        const Text(
                          "Name",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const Text(
                          "Ahmed Saeed Ali",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text(
                          "Email",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const Text(
                          "a7md.alnoori1@icloud.com",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text(
                          "Phone Number",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const Text(
                          "+966 563679771",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text(
                          "Country",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const Text(
                          "Saudi Arabia",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5,
                                height: height * 0.05,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xFFE5E5E5),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ),
        Positioned(
          top: height * 0.01,
          left: width * 0.265,
          child: CircleAvatar(
            radius: 90,
            backgroundImage: const AssetImage('assets/IMG_3188.PNG'),
          ),
        ),
      ],
    );
  }
}
