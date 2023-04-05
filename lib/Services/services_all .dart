import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';

class ServicesAll extends StatelessWidget {
  const ServicesAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: tile,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: tile1,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
