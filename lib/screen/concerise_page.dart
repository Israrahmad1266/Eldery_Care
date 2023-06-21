import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConciergeService extends StatelessWidget {
  const ConciergeService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55),
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
                    width: 30,
                  ),
                  Text(
                    'Concierge Service',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: tile3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/nurse.png'),
                    ),
                    Text(
                      'Medical Needs',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: tile3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: tile,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 2,
                color: tile2,
                indent: 10,
                endIndent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
