import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_screens/login3/Widgets/blured_textfield.dart';

class LoginPage3 extends StatelessWidget {
  const LoginPage3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/back2.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.15),
              BlendMode.darken,
            ),
          )),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
              child: Container(
                color: Colors.black.withOpacity(
                    0),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 166,
                    ),
                    Image.asset('assets/logo1.png'),
                    SizedBox(
                      height: 136,
                    ),
                    BluredTextField(
                        label_text: 'Email Address',
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    BluredTextField(
                        label_text: 'Password',
                        icon: Icon(
                          Icons.password_outlined,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      height: 52,
                      margin: EdgeInsets.only(right: 38, left: 38),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width / 3,
                          height: 2,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: width / 3,
                          height: 2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 52,
                      margin: EdgeInsets.only(right: 38, left: 38),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text(
                          'CREATE AN ACCOUNT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                )),
              ))),
    );
  }
}
