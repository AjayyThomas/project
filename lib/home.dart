import 'package:flutter/material.dart';
import 'package:project/book.dart';
import 'package:project/home1.dart';
import 'package:project/profile.dart';
import 'package:project/whishlist.dart';

class rat extends StatefulWidget {
  const rat({super.key});

  @override
  State<rat> createState() => _ratState();
}

class _ratState extends State<rat> {

  int selected = 0;

  List home = [
    page1(),
    page2(),
    page3(),
    page4()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (index){
          setState(() {
            selected = index;
          });
        },
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          selectedFontSize: 20,
          items: [
BottomNavigationBarItem(
  backgroundColor: Colors.blueAccent,
    icon: Icon(Icons.home),
  label: 'home',
),
BottomNavigationBarItem(
    icon: Icon(Icons.book),
  label: 'book',
),
BottomNavigationBarItem(
    icon: Icon(Icons.heart_broken),
  label: 'whishlist',
),
            BottomNavigationBarItem(
    icon: Icon(Icons.person),
  label: 'profile',
)
          ]),
      body: home [selected],
    );
  }
}
