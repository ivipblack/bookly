// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFEFF0D7),
      appBar: AppBar(
        title: Text("Bookly",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFFEFF0D7),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color(0xFFF3F3ED),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  spreadRadius: -4,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            // searchbar
            child: TextField(
              decoration: InputDecoration(
                //make shadow for textfield
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  // remove border
                  borderSide: BorderSide.none,
                ),
                hintText: '  Find your book...',
                helperStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                hintStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: SizedBox(
                      height: height * 0.03,
                      child: SvgPicture.asset("assets/searchnormal1.svg"),
                    ),
                  ),
                ),
                suffixIcon: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: SizedBox(
                      height: height * 0.03,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        //horizontal listview
        SizedBox(
          height: height * 0.16,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              aCategory(height, "Non-fiction", "assets/non-fiction.svg"),
              aCategoryPNG(height, "Horror", "assets/Group 4036.png"),
              aCategory(height, "Romance", "assets/romance.svg"),
              aCategory(height, "Comedy", "assets/Comedy.svg"),
              aCategory(height, "Action", "assets/action.svg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Now",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "See all",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Padding aCategory(double height, String title, imageLink) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              height: height * 0.1,
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
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Padding aCategoryPNG(double height, String title, imageLink) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              height: height * 0.1,
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
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
