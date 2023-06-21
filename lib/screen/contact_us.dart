import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      backgroundColor: tile3,
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Contact US',
                    style: TextStyle(
                        fontSize: 25,
                        color: tile3,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Tell us How we can help',
                style: TextStyle(
                    fontSize: 19, color: tile3, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Our crew member are sstifing by\n service & support',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (() {
                  Get.to(const HomeMenu());
                }),
                child: Container(
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: tile3,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200, top: 9),
                        child: Text(
                          'Phone call',
                          style: TextStyle(fontSize: 15, color: tile3),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Text(
                                'Call us 24/7 we will answer you',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 158, top: 10),
                        child: Text(
                          '+919882838654',
                          style: TextStyle(fontSize: 15, color: tile3),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (() {
                  Get.to(const HomeMenu());
                }),
                child: Container(
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: tile3,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 230, top: 9),
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 15, color: tile3),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Text(
                                'Get solutions beamed to your  inbox',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 133, top: 10),
                        child: Text(
                          'Support@named.in',
                          style: TextStyle(fontSize: 15, color: tile3),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (() {
                  Get.to(const HomeMenu());
                }),
                child: Container(
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: tile3,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 170, top: 9),
                        child: Text(
                          'Whatsapp Chat',
                          style: TextStyle(fontSize: 15, color: tile3),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Text(
                                'start a conversion on whatsapp now!',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 158, top: 10),
                        child: Text(
                          '+919882838654',
                          style: TextStyle(fontSize: 15, color: tile3),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tile3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.emoji_emotions),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Give us a Feedback'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tile3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Contact with us'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tile3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.wechat),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Chat with Assistant'),
                    ],
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
