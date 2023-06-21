import 'dart:math';

import 'package:doctor_project/Home_Page/login_page.dart';
import 'package:doctor_project/Services/services_all%20.dart';
import 'package:doctor_project/Services2/services_all2.dart';
import 'package:doctor_project/Subscription_Page/subscription_page.dart';
import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      length: 2,
      vsync: this,
    );
  }

  final _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: InkWell(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SubscriptionPage()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: tile2,
                    ),
                    leading: const Image(
                      image: AssetImage('assets/images/plan detail.png'),
                      height: 100,
                    ),
                    title: const Text(
                      'Plan detail',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: tile2,
                    ),
                    leading: const Image(
                      image: AssetImage('assets/images/health managmnet.png'),
                      height: 80,
                    ),
                    title: const Text(
                      'Health Managment',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: tile2,
                    ),
                    leading: const Image(
                      image: AssetImage('assets/images/conseirge service.png'),
                      height: 80,
                    ),
                    title: const Text(
                      'Concierge Service',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: tile2,
                    ),
                    leading: const Image(
                      image: AssetImage('assets/images/conact us.png'),
                      height: 80,
                    ),
                    title: const Text(
                      'Contact US',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: tile2,
                    ),
                    leading: const Image(
                      image: AssetImage('assets/images/setting.png'),
                      height: 80,
                    ),
                    title: const Text(
                      'Setting',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ),
                  ListTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: tile2,
                    ),
                    leading: const Image(
                      image: AssetImage(
                        'assets/images/setting.png',
                      ),
                      height: 80,
                    ),
                    title: const Text(
                      'Elder Club',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SubscriptionPage()));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 1,
                            color: Colors.purple,
                          ))),
                          child: Text(
                            'Terms & Condition',
                            style: TextStyle(fontSize: 17, color: tile3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          child: Text(
                            'Policy Privecy',
                            style: TextStyle(fontSize: 17, color: tile3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tile3,
                          elevation: 0,
                        ),
                        onPressed: () async {
                          final SharedPreferences sharedPreferences =
                              await SharedPreferences.getInstance();

                          sharedPreferences.remove('_controller');
                          Get.to(LoginScreen());
                        },
                        child: Row(
                          children: [
                            Text(
                              'Logout',
                              style: GoogleFonts.roboto(
                                  fontSize: 20, color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(Icons.logout,
                                size: 20, color: Colors.white),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        key: _scaffoldState,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 220, left: 5),
                  ),
                  CircleAvatar(
                    maxRadius: max(23, 20),
                    backgroundColor: const Color(0xff7D4292),
                    child: IconButton(
                      onPressed: () {
                        _scaffoldState.currentState?.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 230,
                    child: TextFormField(
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        decorationThickness: 0,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.none,
                      textAlign: TextAlign.center,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 30,
                          ),
                          hintText: 'Search for any services',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          disabledBorder: InputBorder.none,
                          focusColor: const Color(0xff7D4292),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xff7D4292),
                            ),
                          ),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xff7D4292),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xff7D4292),
                    maxRadius: max(23, 20),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xff7D4292),
                    maxRadius: max(23, 20),
                    child: const Icon(
                      Icons.manage_accounts,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 210),
                child: const Text(
                  'Welcom,Harsh',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff7D4292),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffd3ade0),
                      ),
                      height: 200,
                      width: 409,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '"I dont belive in aging.I\n believe in forever altering\n one s aspect to the sun."',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: Image.asset(
                              'assets/images/baby.jpg',
                              height: 200,
                              fit: BoxFit.fill,
                              width: 215,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                          width: 1,
                          color: const Color(0xff7D4292),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffd3ade0),
                      ),
                      height: 200,
                      width: 409,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '"I dont belive in aging.I\n believe in forever altering\n one s aspect to the sun."',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: Image.asset(
                              'assets/images/doc.jpg',
                              height: 200,
                              fit: BoxFit.fill,
                              width: 215,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffd3ade0),
                      ),
                      height: 200,
                      width: 409,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '"I dont belive in aging.I\n believe in forever altering\n one s aspect to the sun."',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: Image.asset(
                              'assets/images/health.jpg',
                              height: 200,
                              fit: BoxFit.fill,
                              width: 215,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(left: 70, right: 70),
                      isScrollable: true,
                      labelColor: Colors.black,
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          text: 'Services',
                        ),
                        Tab(
                          text: 'All Services',
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    ServicesAll(),
                    ServicesAll2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
