import 'package:flutter/material.dart';

class RoundedBox extends StatelessWidget {
  final String path;
  const RoundedBox({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff707070),width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Image.asset(this.path,width: 22,height: 22,),
    );
  }
}