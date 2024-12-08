import 'package:flutter/material.dart';

class DataShowScreen extends StatefulWidget {
  /// here we create constructor
  String? name;
  String? age;

  DataShowScreen({super.key, required this.age, required this.name});

  @override
  State<DataShowScreen> createState() => _DataShowScreenState();
}

class _DataShowScreenState extends State<DataShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Show Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name ?? "not found ",
              style: const TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.age ?? "not found ",
              style: const TextStyle(fontSize: 25, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}

/// this is my second screen
