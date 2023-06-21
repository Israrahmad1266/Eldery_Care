// ignore_for_file: file_names

import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/majer%20color/color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroominNeeds extends StatelessWidget {
  const GroominNeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      backgroundColor: tile3,
                      onPressed: () {
                        Get.to(const HomeMenu());
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'Grooming',
                    style: TextStyle(fontSize: 20, color: tile3),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: [
                    InkWell(
                      onTap: (() {
                        showDialogs(context);
                      }),
                      child: Container(
                          decoration: BoxDecoration(
                            color: tile,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/barber.png',
                                height: 120,
                                alignment: Alignment.center,
                              ),
                              const Text(
                                'Barber',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        showDialogs(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: tile1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/make-up.png',
                              height: 120,
                            ),
                            Text(
                              'Make-up',
                              style: TextStyle(
                                  color: tile,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialogs(context);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            color: tile1,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/pedicure.png',
                                height: 120,
                              ),
                              Text(
                                'Pedicure',
                                style: TextStyle(
                                    color: tile,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDialogs(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text('Are you sure want to submit?'),
      backgroundColor: Colors.grey[300],
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                backgroundColor: MaterialStateProperty.all(tile3),
              ),
              onPressed: () {},
              child: const Text('Request Call Back'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(tile3),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
