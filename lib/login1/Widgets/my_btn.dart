import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color bg_color;
  final String text;
  final Color text_color;

  const MyButton(
      {super.key,
      required this.bg_color,
      required this.text,
      required this.text_color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bg_color,
        shape: StadiumBorder(),
        side: BorderSide(
          width: this.text == 'LOGIN' ? 0.0 : 1.0,
          color: Colors.grey,
        ),
      ),
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.only(right: 30, left: 30, top: 15, bottom: 15),
        child: Center(
            child: Text(
          this.text,
          style: TextStyle(color: text_color),
        )),
      ),
    );
  }
}
