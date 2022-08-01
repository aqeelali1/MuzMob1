import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import 'package:muzmob/homes/favorite.dart';
import 'package:muzmob/homes/home.dart';
import 'package:muzmob/homes/profile.dart';
import 'package:muzmob/homes/shop.dart';
import 'package:muzmob/theme/colors.dart';

class TabsPages extends StatefulWidget {
  TabsPages({Key? key}) : super(key: key);

  @override
  State<TabsPages> createState() => _TabsPagesState();
}

class _TabsPagesState extends State<TabsPages> {
  int _current = 0;

  List<Widget> _pages = [home(), shop(), favorite(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_current],
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 51, 55, 66),
          onTap: ((index) {
            setState(() {
              _current = index;
            });
          }),
          elevation: 0,
          iconSize: 30,
          selectedFontSize: 18,
          unselectedFontSize: 16,
          selectedLabelStyle: TextStyle(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          currentIndex: _current,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 117, 123, 133),
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.search), label: 'Search'),

            BottomNavigationBarItem(
                icon: Icon(Ionicons.list_outline), label: 'Playlist'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
