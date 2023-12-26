import 'package:flutter/material.dart';

class BluredTextField extends StatelessWidget {
  final String label_text;
  final Icon icon;
  const BluredTextField({super.key, required this.label_text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 38,left: 38),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          labelText: this.label_text,
          labelStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.white.withOpacity(0.3),
          prefixIcon: this.icon,
          iconColor: Colors.white
        ),
      ),
    );
  }
}