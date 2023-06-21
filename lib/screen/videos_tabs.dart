import 'package:doctor_project/majer%20color/color.dart';

import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class TabBarViews extends StatefulWidget {
  const TabBarViews({super.key});

  @override
  State<TabBarViews> createState() => _TabBarViewsState();
}

class _TabBarViewsState extends State<TabBarViews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xffe0c3fc), Color(0xff8ec5fc)],
        ),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tile1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/baby care.jpg'),
                      ),
                    ),
                    height: 250,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: ReadMoreText(
                      'Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”   ',
                      lessStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                      moreStyle: TextStyle(
                        color: Colors.green,
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff3B3131),
                      ),
                      trimLines: 4,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: 'Read Less',
                      trimMode: TrimMode.Line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tile1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/elder care.jpg'),
                      ),
                    ),
                    height: 250,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: ReadMoreText(
                      'Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”  ',
                      lessStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                      moreStyle: TextStyle(
                        color: Colors.green,
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff3B3131),
                      ),
                      trimLines: 4,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: 'Read Less',
                      trimMode: TrimMode.Line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tile1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/children.jpg'),
                      ),
                    ),
                    height: 250,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: ReadMoreText(
                      'Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”  ',
                      lessStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                      moreStyle: TextStyle(
                        color: Colors.green,
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff3B3131),
                      ),
                      trimLines: 4,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: 'Read Less',
                      trimMode: TrimMode.Line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tile1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/love.jpg'),
                      ),
                    ),
                    height: 250,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: ReadMoreText(
                      'Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”Grammarly has made life so much easier. I honestly don’t know how I would have gotten so much content up in such a clear and concise way, and in such a short amount of time, if it wasn’t for your program.”  ',
                      lessStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                      moreStyle: TextStyle(
                        color: Colors.green,
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff3B3131),
                      ),
                      trimLines: 4,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: 'Read Less',
                      trimMode: TrimMode.Line,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
