import 'dart:math';

import 'package:doctor_project/Services/services_all%20.dart';
import 'package:doctor_project/Services2/services_all2.dart';
import 'package:flutter/material.dart';

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
    // TODO: implement initState
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
        drawer: Row(
          children: const [
            Drawer(),
          ],
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
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffd3ade0),
                      ),
                      height: 200,
                      width: 409,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                            borderRadius: BorderRadius.only(
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
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                          width: 1,
                          color: Color(0xff7D4292),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffd3ade0),
                      ),
                      height: 200,
                      width: 409,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                            borderRadius: BorderRadius.only(
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
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.none,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffd3ade0),
                      ),
                      height: 200,
                      width: 409,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                            borderRadius: BorderRadius.only(
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
                    SizedBox(width: 25),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                      labelPadding: EdgeInsets.only(left: 70, right: 70),
                      isScrollable: true,
                      labelColor: Colors.black,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          text: 'Services',
                        ),
                        Tab(
                          text: 'All Services',
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: [
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
