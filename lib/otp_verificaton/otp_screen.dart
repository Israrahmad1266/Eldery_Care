import 'package:doctor_project/Home_Page/login_page.dart';
import 'package:doctor_project/Register%20Page/register_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff24142e),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 120),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 45,
                        child: FloatingActionButton(
                          backgroundColor: const Color(0xff7D4292),
                          child: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                        ),
                      ),
                      Image.asset('assets/images/flash.png', width: 190),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Verify your number',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Enter 4 - digit verification code sent to your phone number +9882838958 edit',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorHeight: 25,
                          cursorWidth: 2,
                          cursorColor: Colors.black,
                          style: const TextStyle(
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorHeight: 25,
                          cursorWidth: 2,
                          cursorColor: Colors.black,
                          style: const TextStyle(
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorHeight: 25,
                          cursorColor: Colors.black,
                          cursorWidth: 2,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorHeight: 25,
                          cursorColor: Colors.black,
                          cursorWidth: 2,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 50),
                        backgroundColor: const Color(0xff7D4292),
                        elevation: 10,
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Verify',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Trouble receving code?',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'RESEND OTP',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    const Text(
                      'By continusing to our',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      'Terms of use & privecy policy',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
