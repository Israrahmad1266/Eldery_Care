import 'package:doctor_project/Register%20Page/register_page.dart';
import 'package:doctor_project/Subscription_Page/subscription_page.dart';
import 'package:flutter/material.dart';

class PaymentGateway extends StatefulWidget {
  const PaymentGateway({super.key});

  @override
  State<PaymentGateway> createState() => _PaymentGatewayState();
}

class _PaymentGatewayState extends State<PaymentGateway> {
  String? _gender;
  String? _gendervalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 140,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  child: FloatingActionButton(
                    backgroundColor: Color(0xff7D4292),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubscriptionPage(),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Text(
                  'Payment',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff7D4292),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ammount to be pay',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff7D4292),
                      fontWeight: FontWeight.w500),
                ),
                Text('3456'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xff7D4292),
            thickness: 1.5,
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.only(right: 220),
            child: Text(
              'Suggested for you',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff7D4292),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          RadioListTile(
            activeColor: Color(0xff7D4292),
            autofocus: true,
            subtitle: Text(
              'Account No. xxxx xxxx 6746',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            title: Row(
              children: [
                Text(
                  'Kotak Mahindra Bank UPI',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Image.asset(
                  ('assets/images/upi.png'),
                  height: 27,
                )
              ],
            ),
            value: "bank",
            groupValue: _gendervalue,
            onChanged: (value) {
              setState(() {
                _gendervalue = value.toString();
              });
            },
          ),
          RadioListTile(
            activeColor: Color(0xff7D4292),
            subtitle: Text(
              'azhar111@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            title: Row(
              children: [
                Text(
                  'Google Pay UPI',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Image.asset(
                  'assets/images/gogle.png',
                  height: 35,
                ),
              ],
            ),
            value: "account",
            groupValue: _gendervalue,
            onChanged: (value) {
              setState(() {
                _gendervalue = value.toString();
              });
            },
          ),
          Divider(
            color: Color(0xff7D4292),
            thickness: 1.5,
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(right: 240),
            child: Text(
              'All other option',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          RadioListTile(
            activeColor: Color(0xff7D4292),
            title: Row(
              children: [
                Text(
                  'UPI',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 240,
                ),
                Image.asset(
                  ('assets/images/upi2.png'),
                  height: 70,
                )
              ],
            ),
            value: "male",
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value.toString();
              });
            },
          ),
          RadioListTile(
            activeColor: Color(0xff7D4292),
            title: Row(
              children: [
                Text(
                  'Wallets',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 220,
                ),
                Image.asset('assets/images/wallet.png'),
              ],
            ),
            value: "0",
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value.toString();
              });
            },
          ),
          RadioListTile(
            activeColor: Color(0xff7D4292),
            title: Row(
              children: [
                Text(
                  'Credit/Debit/ATM Card',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Image.asset('assets/images/credit.png'),
              ],
            ),
            value: "1",
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value.toString();
              });
            },
          ),
          RadioListTile(
            activeColor: Color(0xff7D4292),
            title: Row(
              children: [
                Text(
                  'Cash on Delivery',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Image.asset('assets/images/money.png'),
              ],
            ),
            value: "3",
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value.toString();
              });
            },
          ),
          Divider(
            height: 4,
            thickness: 3,
            color: Color(0xff7D4292),
          ),
          Padding(
            padding: EdgeInsets.only(right: 270, top: 12),
            child: Text(
              textAlign: TextAlign.justify,
              '+   Gift Card',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff7D4292),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 4,
            thickness: 2,
            color: Color(0xff7D4292),
          ),
          SizedBox(
            height: 18,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(350, 60),
              backgroundColor: Color(0xff7D4292),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Proceed to Pay',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
