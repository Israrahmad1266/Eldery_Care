import 'dart:ffi';

import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/Services/services_all%20.dart';
import 'package:doctor_project/Services2/services_all2.dart';
import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  PageController controller = PageController();
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    controller.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          HomeMenu(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3_outlined),
            label: 'home',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'feed',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Profile',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_sharp),
            label: 'Favrite',
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
