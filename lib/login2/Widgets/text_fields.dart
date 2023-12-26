import 'package:flutter/material.dart';

class BlackedTextField extends StatelessWidget {
  final String label_text;
  const BlackedTextField({super.key, required this.label_text});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24,left: 24,bottom: 14),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          filled: true,
          labelText: this.label_text,
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.5))
        ),
      ),
    );
  }
}