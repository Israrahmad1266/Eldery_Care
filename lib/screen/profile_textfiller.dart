// ignore_for_file: must_be_immutable

import 'package:doctor_project/majer%20color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileText extends StatelessWidget {
  ProfileText({
    super.key,
    required this.hintText,
  });

  String hintText;

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Form(
            key: formKey,
            child: TextFormField(
              keyboardType: TextInputType.name,
              controller: _controller,
              cursorColor: tile3,
              decoration: InputDecoration(
                hintStyle: GoogleFonts.roboto(
                  color: tile3,
                ),
                hintText: hintText,
                contentPadding: const EdgeInsets.only(
                  left: 30,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: tile3,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                enabled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: tile3,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
