//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            aCard(height, width, "assets/image 2.png", "The Call of The Wild",
                "John Doe", "Horror, Fiction", "2020", "4.5"),
            aCard(height, width, "assets/image 3.png", "Alice's Adventures",
                "Paulo Coelho", "Non-fiction, Action", "2019", "4.6"),
            aCard(height, width, "assets/image 5.png", "Alice's Adventures",
                "Paulo Coelho", "Non-fiction, Action", "2019", "4.6"),
            aCard(height, width, "assets/image 2.png", "Alice's Adventures",
                "Paulo Coelho", "Non-fiction, Action", "2019", "4.6"),
            aCard(height, width, "assets/image 3.png", "Alice's Adventures",
                "Paulo Coelho", "Non-fiction, Action", "2019", "4.6"),
            SizedBox(
              height: height * 0.02,
            )
          ],
        ),
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
                            child: Image.asset("assets/1138317.png",
                                height: height * 0.025)),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
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
