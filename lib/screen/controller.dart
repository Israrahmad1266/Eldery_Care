import 'dart:convert';

import 'package:doctor_project/screen/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

class CallingApi extends StatefulWidget {
  const CallingApi({super.key});

  @override
  State<CallingApi> createState() => _CallingApiState();
}

class _CallingApiState extends State<CallingApi> {
  Future<userModel> getProductApi() async {
    final response = await http.get(Uri.parse(
        'https://sqd1nkfeu1.execute-api.ap-south-1.amazonaws.com/development/api/v1/auth'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return userModel.fromJson(data);
    } else {
      return userModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('apiclling'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder<userModel>(builder: (context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.users!.length,
                itemBuilder: (context, index) {
                  return Container();
                });
          }),
        ],
      ),
    );
  }
}
