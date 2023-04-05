import 'package:doctor_project/otp_verificaton/otp_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _controller = TextEditingController();

  LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24142e),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 115),
                child: Image.asset(
                  'assets/images/flash.png',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 100,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  cursorHeight: 25,
                  cursorColor: Colors.white,
                  autofocus: true,
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter Mobile Number',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    hintMaxLines: 3,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/flagin.png',
                        height: 30,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color(0xfff8F3C80),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color(0xfff8F3C80),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationScreen()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Color(0xff7D4292),
                  fixedSize: Size(340, 65),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I have an accont?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xfff8F3C80),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  child: Divider(
                    color: Color(0xfff8F3C80),
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
                Container(
                  width: 160,
                  child: Divider(
                    color: Color(0xfff8F3C80),
                    height: 50,
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(
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
                    fixedSize: Size(180, 0),
                  ),
                  onPressed: () {},
                  child: Text(
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
            SizedBox(
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
                      color: Color(0xfff8F3C80),
                      width: 1.5,
                    ),
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(
                        'assets/images/google.png',
                      ),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 0.0,
                      fixedSize: Size(180, 0),
                    ),
                    onPressed: () {},
                    child: Text(
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
