import 'package:flutter/material.dart';

class My_Fields extends StatelessWidget {
  const My_Fields({super.key, required this.label_text});
  final String label_text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
        fillColor: Colors.white,
        labelText: this.label_text,
      ),
    );
  }
}
