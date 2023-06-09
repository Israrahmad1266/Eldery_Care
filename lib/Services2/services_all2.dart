import 'package:doctor_project/Register%20Page/register_page.dart';
import 'package:doctor_project/majer%20color/color.dart';
import 'package:doctor_project/screen/daily_needs_page.dart';
import 'package:doctor_project/screen/grooming_page.dart';
import 'package:doctor_project/screen/medical_aid%20page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesAll2 extends StatelessWidget {
  const ServicesAll2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const MedicalNeeds());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 165,
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/doctor.png',
                          height: 110,
                        ),
                        const Text(
                          'Medial Aid',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const DailyNeeds());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 165,
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/daily needs.png',
                          color: tile,
                          height: 110,
                        ),
                        Text(
                          'Daily Needs',
                          style: TextStyle(
                              fontSize: 20,
                              color: tile,
                              fontWeight: FontWeight.bold),
                        )
                      ],
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
                Padding(padding: EdgeInsets.all(10)),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 165,
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/repaire.png',
                          height: 120,
                        ),
                        Text(
                          'Reapire',
                          style: TextStyle(
                              fontSize: 20,
                              color: tile,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: (() {
                    Get.to(const GroominNeeds());
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                      color: tile,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 165,
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/grooming.png',
                          height: 110,
                        ),
                        Text(
                          'Grooming',
                          style: TextStyle(
                              fontSize: 20,
                              color: tile1,
                              fontWeight: FontWeight.bold),
                        )
                      ],
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
