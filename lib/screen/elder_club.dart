import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/majer%20color/color.dart';
import 'package:doctor_project/screen/bloges_tabs.dart';

import 'package:doctor_project/screen/videos_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElderClub extends StatefulWidget {
  const ElderClub({super.key});

  @override
  State<ElderClub> createState() => _ElderClubState();
}

class _ElderClubState extends State<ElderClub>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFFE7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Text(
                'Elder Club',
                style: TextStyle(
                  fontSize: 25,
                  color: tile3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    child: FloatingActionButton(
                        backgroundColor: tile3,
                        child: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Get.to(const HomeMenu());
                        }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          border: Border.all(color: tile3, width: 2.0),
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(500.0),
                          onTap: () {},
                          child: Icon(
                            Icons.filter_list,
                            color: tile3,
                            size: 30,
                            //size: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 79,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40)),
                    ),
                    height: 50,
                    width: 215,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2013/07/18/20/24/brad-pitt-164880_960_720.jpg'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/10/13/07/09/model-1736963_960_720.jpg'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Text(
                                'Live Now!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffFCFFE7),
                                ),
                              ),
                              Icon(
                                Icons.play_arrow_rounded,
                                size: 25,
                                color: Color(0xffFCFFE7),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: TextFormField(
                  cursorColor: tile3,
                  cursorHeight: 25,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    hintText: 'Search for your topics',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: tile2,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                      color: tile2,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: tile3,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: tile3,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTabController(
                initialIndex: 1,
                length: 2,
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    labelStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    unselectedLabelColor: tile1,
                    indicatorPadding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    labelColor: tile3,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    tabs: const [
                      Tab(
                        text: 'Vlogs',
                      ),
                      Tab(
                        text: 'Videos',
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    TabBarViews(),
                    TappedBaar(),
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
