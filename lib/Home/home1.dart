import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int numberOfPages = 2;
  int currentPages = 0;

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      numberOfPages,
      (index) => HomeScreen(),
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: pages[currentPages],
            ),
          ),
        ],
      ),
    );
  }
}
