import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screens/login1/View/login1.dart';
import 'package:login_screens/login2/View/login2.dart';

import '../login3/View/login3.dart';

class SimpleMenuPage extends StatelessWidget {
  const SimpleMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Developed By Amirreza_Khezerlou'),
            ],
          ),
          SizedBox(height: 72.0),
          ElevatedButton(
              onPressed: () {
                Get.to(() => LoginPage1());
              },
              child: Text('Login Design 1')),
          SizedBox(height: 36.0),
          ElevatedButton(
              onPressed: () {
                Get.to(() => LoginPage2());
              },
              child: Text('Login Design 2')),
          SizedBox(height: 36.0),
          ElevatedButton(
              onPressed: () {
                Get.to(() => LoginPage3());
              },
              child: Text('Login Design 3')),
        ],
      ),
    );
  }
}
