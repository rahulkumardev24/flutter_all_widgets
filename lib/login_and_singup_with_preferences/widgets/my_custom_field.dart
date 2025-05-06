import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  MyCustomField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white, fontSize: 18),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white54, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white54, width: 2))),
    );
  }
}
