import 'dart:io';

import 'package:doctor_project/majer%20color/color.dart';
import 'package:doctor_project/screen/profile_textfiller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'image_picker_controller.dart';

class ProfilepicUpdate extends StatefulWidget {
  const ProfilepicUpdate({super.key});

  @override
  State<ProfilepicUpdate> createState() => _ProfilepicUpdateState();
}

class _ProfilepicUpdateState extends State<ProfilepicUpdate> {
  final _controller = TextEditingController();
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void initState() {
    super.initState();
  }

  String? selectedValue = 'Free';
  List listItem = ['Free', 'Paid'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      child: FloatingActionButton(
                        backgroundColor: tile3,
                        onPressed: () {},
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: GoogleFonts.roboto(
                          color: tile3,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: Obx(() {
                    return InkWell(
                      onTap: () {
                        controller.getImage();
                      },
                      child: CircleAvatar(
                          radius: 50,
                          backgroundImage: controller.imagePath.isNotEmpty
                              ? FileImage(
                                  File(
                                    controller.imagePath.toString(),
                                  ),
                                )
                              : Image.network(
                                      'https://img.freepik.com/free-photo/fantasy-enchanted-fairy-forest-magic-baby-dragon-generative-ai_157027-1747.jpg?size=626&ext=jpg&ga=GA1.2.1135939.1686750664')
                                  .image),
                    );
                  }),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ProfileText(
              hintText: 'Elder Fly ID',
            ),
            ProfileText(hintText: 'Gender'),
            ProfileText(hintText: 'Date of birth'),
            ProfileText(hintText: 'Blood Group'),
            ProfileText(hintText: 'Address'),
            ProfileText(hintText: 'Mobile'),
            ProfileText(hintText: 'Emergency Contact'),
            ProfileText(hintText: 'Email'),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.name,
                controller: _controller,
                cursorColor: tile3,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Plan Detail',
                  hintStyle: GoogleFonts.roboto(
                    color: tile3,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: tile3,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: tile3,
                    ),
                  ),
                  suffixIcon: Container(
                    width: 110,
                    child: DropdownButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      iconSize: 30,
                      iconEnabledColor: tile3,
                      value: selectedValue,
                      onChanged: (val) {
                        setState(() {
                          selectedValue = val as String?;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(
                            valueItem,
                            style:
                                GoogleFonts.roboto(fontWeight: FontWeight.w400),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(350, 50),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(tile3),
              ),
              onPressed: () {},
              child: Text(
                'Submit',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
