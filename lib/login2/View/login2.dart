import 'package:flutter/material.dart';
import 'package:login_screens/login2/Widgets/text_fields.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/girl.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/back1.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Image.asset('assets/logo1.png'),
                  Card(
                    elevation: 10,
                    child: Container(
                      width: width / 5 * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff1A1A1A),
                      ),
                      child: Fields(
                        width: width,
                      ),
                    ),
                  ),
                  Container(
                    width: (width / 5 * 4) - 48,
                  height: 50,
                 decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                 ),
                 child: Center(child: Text('SignUp',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                 ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Fields extends StatelessWidget {
  final double width;
  const Fields({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32.0),
        Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 32,
        ),
        BlackedTextField(
          label_text: 'Email Address',
        ),
        BlackedTextField(
          label_text: 'Password',
        ),
        BlackedTextField(
          label_text: 'Re-type Password',
        ),
        SizedBox(height: 12),
        ElevatedButton(
            style: ButtonStyle(
              fixedSize:
                  MaterialStateProperty.all(Size((width / 5 * 4) - 48, 50.0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(0.0), // شکل مستطیل با گوشه‌های گرد
                ),
              ),
              // تنظیم رنگ زمینه دکمه به آبی
              backgroundColor: MaterialStateProperty.all(Color(0xff6D67D2)),
            ),
            onPressed: () {},
            child: Text('LOGIN',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 16,),
            Row(
              children: [
                SizedBox(width: 24,),
                Text('Forgot Password?',style: TextStyle(color: Color(0xff6D67D2)),),
                SizedBox(height: 30,),
              ],
            )
      ],
    );
  }
}
