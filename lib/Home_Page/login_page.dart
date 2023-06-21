import 'package:doctor_project/HomePage%20Menu/home_menu.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  final _controller = TextEditingController();

  LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff24142e),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 115),
                child: Image.asset(
                  'assets/images/flash.png',
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 100,
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  cursorHeight: 25,
                  cursorColor: Colors.white,
                  autofocus: true,
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter Mobile Number',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    hintMaxLines: 3,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/flagin.png',
                        height: 30,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xfff8f3c80),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xfff8f3c80),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();

                  sharedPreferences.setString('_controller', _controller.text);

                  Get.to(const HomeMenu());
                },
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xff7D4292),
                  fixedSize: const Size(340, 65),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'I have an accont?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xfff8f3c80),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  child: Divider(
                    color: Color(0xfff8f3c80),
                    height: 50,
                    thickness: 1.5,
                  ),
                ),
                Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: Divider(
                    color: Color(0xfff8f3c80),
                    height: 50,
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/google.png'),
                TextButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fixedSize: const Size(180, 0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign in with GOOGLE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xfff8f3c80),
                      width: 1.5,
                    ),
                    image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(
                        'assets/images/google.png',
                      ),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 0.0,
                      fixedSize: const Size(180, 0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign in with FACEBOOK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
