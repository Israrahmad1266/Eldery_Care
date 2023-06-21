import 'dart:async';

import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/Home_Page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

String? phoneNumber;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValidatorData().whenComplete(() async {
      Timer(const Duration(seconds: 3), () {
        Get.to(phoneNumber == null ? LoginScreen() : const HomeMenu());
      });
    });

    super.initState();
  }

  Future getValidatorData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    var phoneNumberValidetor = sharedPreferences.getString('_controller');

    setState(() {
      phoneNumber = phoneNumberValidetor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff24142e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flash.png'),
          ],
        ),
      ),
    );
  }
}
