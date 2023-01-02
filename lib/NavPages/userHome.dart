// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bookly/GenerealScreens/bookInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(children: [
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
      Expanded(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
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
            //horicontal listview
            SizedBox(
              height: height * 0.22,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Image.asset('assets/image 2.png',
                      width: width * 0.3, height: height * 0.3),
                  Image.asset('assets/image 3.png',
                      width: width * 0.3, height: height * 0.3),
                  Image.asset('assets/image 5.png',
                      width: width * 0.3, height: height * 0.3),
                  Image.asset('assets/image 2.png',
                      width: width * 0.3, height: height * 0.3),
                ],
              ),
            ),
            //container with bottom shadow
            Container(
              height: height * 0.02,
              decoration: BoxDecoration(
                color: Color(0xFFEFF0D7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                    spreadRadius: -10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Release",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                //horicontal listview
                SizedBox(
                  height: height * 0.21,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Image.asset('assets/image 3.png',
                          width: width * 0.3, height: height * 0.3),
                      Image.asset('assets/image 2.png',
                          width: width * 0.3, height: height * 0.3),
                      Image.asset('assets/image 5.png',
                          width: width * 0.3, height: height * 0.3),
                      Image.asset('assets/image 2.png',
                          width: width * 0.3, height: height * 0.3),
                    ],
                  ),
                ),
                //container with bottom shadow
                Container(
                  height: height * 0.02,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF0D7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                        spreadRadius: -10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                aCard(
                    height,
                    width,
                    "assets/image 2.png",
                    "The Call of The Wild",
                    "John Doe",
                    "Horror, Fiction",
                    "2020",
                    "4.5"),
                aCard(height, width, "assets/image 3.png", "Alice's Adventures",
                    "Paulo Coelho", "Non-fiction, Action", "2019", "4.6"),
                SizedBox(
                  height: height * 0.035,
                ),
              ]),
            ),
          ],
        ),
      ),
    ]);
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

  Padding aCard(double height, double width, String image, String title,
      String author, String category, String publication, String rating) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        height: height * 0.2,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color(0xFFF3F3ED),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20,
              spreadRadius: -20,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          Text(
                            rating,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ])
                      ],
                    ),
                  ),
                  Text(
                    "by: $author",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Year of Publication: $publication",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          )),
                      Text("Category: $category ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.028,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.07,
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.grey[300],
                        ),
                        child: Center(
                            child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 22,
                        )),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookInfo()));
                        },
                        child: Container(
                          height: height * 0.04,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color(0xFFEDCA71),
                          ),
                          child: Center(
                            child: Text(
                              "Read",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
