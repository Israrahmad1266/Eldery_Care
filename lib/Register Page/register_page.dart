import 'package:flutter/material.dart';

import '../Subscription_Page/subscription_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: Icon(Icons.arrow_back),
                        backgroundColor: Color(0xff7D4292),
                      ),
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Register your account',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff7D4292),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Name',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Age',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Address',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Language',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.location_on,
                          color: Color(0xff7D4292),
                        ),
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Location',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Email',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xff7D4292),
                        ),
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D4292),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Color(0xff7D4292),
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xff7D4292),
                        ),
                        filled: true,
                        fillColor: Color(0xffededed),
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Confirm Password',
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7D4292),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color(0xff7D4292),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xff7D4292),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7D4292),
                  fixedSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubscriptionPage(),
                    ),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
