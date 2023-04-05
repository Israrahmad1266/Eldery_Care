import 'package:doctor_project/HomePage%20Menu/home_menu.dart';
import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  PageController controller = PageController();
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    controller.jumpToPage(index);
  }

  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: PageView(
          controller: controller,
          children: [
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                  vertical: 50,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      right: 30,
                    )),
                    Container(
                      height: 50,
                      width: 50,
                      child: FloatingActionButton(
                        backgroundColor: tile,
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Madical Aid',
                      style: TextStyle(fontSize: 25, color: tile),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 165,
                      width: 165,
                      color: tile1,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 165,
                      width: 165,
                      color: tile1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 165,
                      width: 165,
                      color: tile,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 165,
                      width: 165,
                      color: tile,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 100),
        margin: EdgeInsets.only(right: 120, left: 120),
        child: BottomNavigationBar(
          elevation: 0,
          onTap: onTapped,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.redAccent,
                ),
              ),
              label: 'home',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.redAccent,
                ),
              ),
              label: 'home',
              backgroundColor: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
