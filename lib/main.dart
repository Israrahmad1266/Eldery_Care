import 'package:doctor_project/Home/navigationbar.dart';
import 'package:doctor_project/Home/home1.dart';
import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/Home_Page/home_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen());
  }
}
