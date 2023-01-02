// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:bookly/NavPages/bookMarkPage.dart';
import 'package:bookly/NavPages/favPage.dart';
import 'package:bookly/NavPages/profilePage.dart';
import 'package:bookly/NavPages/userHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _Index = 0;
final List<Widget> _pages = [
  UserHome(),
  FavPage(),
  BookMarkPage(),
  ProfilePage()
];

final List<String> _pagesName = ["Bookly", "Favorite", "Bookmark", "Profile"];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFEFF0D7),
      appBar: AppBar(
        title: Text(_pagesName[_Index],
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
      body: IndexedStack(
        index: _Index,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: height * 0.08,
        color: Color(0xFF5A7D6A),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: GNav(
            gap: 8,
            activeColor: Color(0xFF5A7D6A),
            backgroundColor: Color(0xFF5A7D6A),
            color: Color(0xFFEFF0D7),
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: Duration(milliseconds: 600),
            tabBackgroundColor: Color(0xFFEFF0D7),
            selectedIndex: _Index,
            onTabChange: (index) {
              setState(() {
                _Index = index;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.bookmark_outline,
                text: 'Bookmark',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
