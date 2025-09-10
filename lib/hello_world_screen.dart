import 'package:flutter/material.dart';

class HelloWorldScreen extends StatefulWidget {
  const HelloWorldScreen({super.key});

  @override
  State<HelloWorldScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            "Change Status bar Color",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
        ),
      ),
    );
  }
}
