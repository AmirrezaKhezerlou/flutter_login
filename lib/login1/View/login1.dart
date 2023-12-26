import 'package:flutter/material.dart';
import 'package:login_screens/login1/Widgets/my_btn.dart';
import 'package:login_screens/login1/Widgets/my_fields.dart';
import 'package:login_screens/login1/Widgets/rounded_box.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
       
       
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    width: width,
                    height: height / 3 * 2,
                    color: Colors.red,
                    child: Red_part(),
                  ),
                ),
                Container(
                  height: height/3,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Text('or login with',style: TextStyle(color: Colors.black,fontSize: 14),),
                      SizedBox(height: 27,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBox(path: 'assets/google.png'),
                          SizedBox(width: 16,),
                          RoundedBox(path: 'assets/facebook.png'),
                          SizedBox(width: 16,),
                          RoundedBox(path: 'assets/twitter.png'),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don’t have an account?',style: TextStyle(color: Color(0xff8A9EAD)),),
                            Text(' SIGN UP',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              width: width,
              top: height / 3 * 2-25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(bg_color: Colors.white, text:  'SIGNUP', text_color: Color(0xff707070)),
                  SizedBox(width: 30),
                  MyButton(bg_color: Colors.black, text:  'LOGIN', text_color: Colors.white),
                  
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 20;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Red_part extends StatelessWidget {
  const Red_part({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0,top: 100.0,right: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login',style: TextStyle(color: Colors.white,fontSize: 30),),
          Container(
            color: Colors.white,
            width: 40,
            height: 2,
          ),
          SizedBox(height: 50),
          My_Fields(label_text: 'Email',),
          SizedBox(height: 40),
          My_Fields(label_text: 'Password',),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Forgot Password?',style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
