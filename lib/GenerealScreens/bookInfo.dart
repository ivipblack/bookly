// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class BookInfo extends StatefulWidget {
  const BookInfo({super.key});

  @override
  State<BookInfo> createState() => _BookInfoState();
}

class _BookInfoState extends State<BookInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFEFF0D7),
        appBar: AppBar(
          title: Text("The call of the wild",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(94, 0, 94, 0),
              child: SizedBox(
                height: 360,
                child: Image.asset(
                  "assets/image 2.png",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("4.5"),
                  Icon(Icons.star, color: Colors.yellow),
                  Text("14 Reviews"),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(29, 0, 0, 0),
                          child: Text("Author: Jack London",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(29, 0, 0, 0),
                          child: Text("Publish Year: 2020",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(29, 0, 0, 0),
                          child: Text("Pages: 200",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        aCategory(
                            height, "Non-fiction", "assets/non-fiction.svg"),
                        aCategoryPNG(height, "Horror", "assets/Group 4036.png"),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: width * 0.1,
              endIndent: width * 0.1,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen ")
                ],
              ),
            ),
            //button
          ],
        ),
        bottomNavigationBar: Container(
            height: height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width * 0.3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: width * 0.1,
                            height: height * 0.05,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFEDCA71),
                            ),
                            child: const Center(
                                child: Icon(Icons.favorite_border)),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: width * 0.1,
                            height: height * 0.05,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFEDCA71),
                            ),
                            child: const Center(
                              child: const Center(
                                  child: Icon(Icons.bookmark_add_outlined)),
                            ),
                          ),
                        ),
                      ]),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: width * 0.5,
                    height: height * 0.05,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFFEDCA71),
                    ),
                    child: const Center(
                      child: Text(
                        "Start Reading",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }

  Padding aCategoryPNG(double height, String title, imageLink) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              height: height * 0.07,
              //shadow
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                    spreadRadius: -20,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Image.asset(imageLink),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Padding aCategory(double height, String title, imageLink) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              height: height * 0.07,
              //shadow
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                    spreadRadius: -20,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: SvgPicture.asset(imageLink),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
