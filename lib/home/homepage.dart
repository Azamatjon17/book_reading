import 'package:book_reading/home/discover.dart';
import 'package:book_reading/home/library.dart';
import 'package:book_reading/home/profile.dart';
import 'package:book_reading/home/repetition.dart';

import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> screens = [const Discover(), const Library(), const Repetition(), const Profile()];
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentpage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentpage,
          onTap: (value) {
            currentpage = value;
            setState(() {});
          },
          showUnselectedLabels: true,
          selectedItemColor: const Color(0xff1872F6),
          unselectedItemColor: const Color(0xffB7BAC9),
          unselectedIconTheme: const IconThemeData(color: Color(0xffB7BAC9), size: 26),
          items: const [
            BottomNavigationBarItem(
              // backgroundColor: Colors.amber,
              icon: Icon(
                Icons.speed,
              ),
              label: "Discover",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_rounded),
              label: "Bookmarks", // Add the label here
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: "Repetition", // Add the label here
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile", // Add the label here
            ),
          ],
        ));
  }
}
