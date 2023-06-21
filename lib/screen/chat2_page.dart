import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage2 extends StatelessWidget {
  const ChatPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      backgroundColor: tile3,
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Elderfly Interactive Assistant',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: tile3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: tile3,
                thickness: 0.9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
