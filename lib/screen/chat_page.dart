import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      child: FloatingActionButton(
                        backgroundColor: tile3,
                        onPressed: () {},
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Masseges',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: tile3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              height: 220,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Active',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: tile3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'All ',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: tile3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildCaontactAvatar('alia', 'love.jpg'),
                        buildCaontactAvatar('alia', 'love.jpg'),
                        buildCaontactAvatar('alia', 'love.jpg'),
                        buildCaontactAvatar('alia', 'love.jpg'),
                        buildCaontactAvatar('alia', 'love.jpg'),
                        buildCaontactAvatar('alia', 'love.jpg'),
                        buildCaontactAvatar('alia', 'love.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: ListView(
                children: [
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                  buildConcersionRow('laura', 'How are you', 'health.jpg', 0),
                ],
              ),
            ),
          ),
          Positioned(
            top: 135,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                ),
                cursorHeight: 25,
                cursorColor: tile,
                decoration: InputDecoration(
                  hintText: 'Search for chats',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey[400],
                  ),
                  contentPadding: const EdgeInsets.only(
                    left: 35,
                  ),
                  focusColor: tile,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 1,
                      color: tile,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 1,
                      color: tile,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 20,
            child: Text(
              'ALL Chats',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: tile3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: ShapeDecoration(shape: RoundedRectangleBorder()),
          ),
        ],
      ),
    );
  }

  Column buildConcersionRow(
      String name, String massege, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          children: [
            UserAvatar(filename: filename),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name),
                Text(massege),
              ],
            ),
            const SizedBox(
              width: 180,
            ),
            Column(
              children: [
                Text(
                  msgCount.toString(),
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text('2'),
                )
              ],
            ),
          ],
        ),
        Divider(
          indent: 20,
          thickness: 1,
          endIndent: 20,
          color: tile1,
        ),
      ],
    );
  }

  Padding buildCaontactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    Key? key,
    required this.filename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 29,
          backgroundImage: Image.asset(
            'assets/images/$filename',
            fit: BoxFit.cover,
          ).image),
    );
  }
}
