import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/Home_Page/home_page.dart';
import 'package:doctor_project/Payment_options/payment_getway.dart';
import 'package:flutter/material.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 45,
                      child: FloatingActionButton(
                        backgroundColor: const Color(0xff7D4292),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 110,
                    ),
                  ],
                ),
                Text(
                  'Plan Detail',
                  style: TextStyle(
                    color: Color(0xff7D4292),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  color: Color(0xff7D4292),
                  thickness: 2,
                  endIndent: 130,
                  indent: 130,
                  height: 4,
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffbf8ad2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Text(
                          'Join now free',
                          style: TextStyle(
                            color: Color(0xff7D4292),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      right: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      left: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.brightness_1,
                            size: 8.9,
                            color: Color(0xff7D4292),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 48),
                            height: 70,
                            // width: 200,
                            child: const Text(
                              'Be a part of the revolution\nto forever living young !',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 84),
                          ),
                          const Icon(
                            Icons.brightness_1,
                            size: 8.9,
                            color: Color(0xff7D4292),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Access Eldres club',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 84),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: const Icon(
                              Icons.brightness_1,
                              size: 8.9,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Access community \n service for free',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7D4292),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 84),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: const Icon(
                              Icons.brightness_1,
                              size: 8.9,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Access all other services\n on pay per use basis',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
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
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 85,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 14),
                            child: Icon(
                              Icons.brightness_1,
                              color: const Color(0xff7D4292),
                              size: 8.9,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '24x7 ',
                                  style: TextStyle(
                                    color: Color(0xff7D4292),
                                  ),
                                ),
                                TextSpan(
                                  text: 'SOS ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'on app for any\n medical emergencies',
                                  style: TextStyle(
                                    color: Color(0xff7D4292),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color(0xff7D4292),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeMenu(),
                            ),
                          );
                        },
                        child: const Text(
                          'Join Now',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                //Second Page ///////////////////////////////////////////////////////////
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Color(0xffbf8ad2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Vector.png',
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'SILVER',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7D4292),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 100),
                                backgroundColor: Color(0xff7D4292),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Most Popular',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                  height: 700,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      right: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      left: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Rs. 5999',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff7D4292),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Per Month',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7D4292),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.remove,
                            size: 16,
                            color: Color(0xff7D4292),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            height: 60,
                            // width: 200,
                            child: const Text(
                              'Wearable Gadget with Amber, Red and Green\n alerts',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Icon(
                              Icons.remove,
                              size: 16,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Unlimited emergency response as per alerts\n category',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Icon(
                              Icons.remove,
                              size: 16,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Unlimited access to our mobile app/platform',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Dedicated Professional accessible 24*7',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              '24*7 access to RCC for any assistance',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Assistance for home healthcare services',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Dedicated Professional accessible 24*7',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 35),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'All electronics health records \n accessible on app with\nhealth monitoring trends and alerts',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Medicine/Appointments reminders on app',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Triggers to the close kins on any emegency\nincident and status checks',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color(0xff7D4292),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaymentGateway(),
                            ),
                          );
                        },
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                //Third Page ////////////////////////////////////////////////////////////
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffbf8ad2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/gold.png',
                          height: 60,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Center(
                          child: Text(
                            'Gold',
                            style: TextStyle(
                              color: Color(0xff7D4292),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 530,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      right: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      left: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Rs.    10999',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7D4292),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Per  Month',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7D4292),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.remove,
                              size: 16,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Silver Package Benefits + ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Doctors/Health checks/visits to hospital with\nfree pickup and drop',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Medicine delivery at discounted price',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Icon(
                              Icons.remove,
                              size: 18,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Regular check-in visits by professionals',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Emergency oxygen services(Free up-to 24 \n hrs.)',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            child: Icon(
                              Icons.remove,
                              size: 17,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Peer to peer interaction through 60 Strong\nsocial\n  app with up-to 5 members',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color(0xff7D4292),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaymentGateway(),
                            ),
                          );
                        },
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffbf8ad2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/llb.png',
                          height: 60,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Center(
                          child: Text(
                            'Platinum',
                            style: TextStyle(
                              color: Color(0xff7D4292),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 580,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      right: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                      left: BorderSide(
                        width: 2,
                        color: Color(0xff7D4292),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Rs.    15999',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7D4292),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Per  Month',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7D4292),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.remove,
                              size: 16,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'The Silver and Gold Package Benefits + ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Lifestyle concierge services',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 18),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Community engagement\n(companionship - Peer to peer)',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 35),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Unlimited Peer to peer interaction through\n60Strong social app with members based on\nproximity and interest for socializing',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Any daily household needs (Grocery etc.)\n once a week.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 35),
                            child: Icon(
                              Icons.remove,
                              size: 17,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              'Peer to peer interaction through 60 Strong\nsocial\n  app with up-to 5 members',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7D4292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color(0xff7D4292),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaymentGateway(),
                            ),
                          );
                        },
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
