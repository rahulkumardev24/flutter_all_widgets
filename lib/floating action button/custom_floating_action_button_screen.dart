import 'package:flutter/material.dart';

class CustomFloatingActionButtonScreen extends StatefulWidget {
  const CustomFloatingActionButtonScreen({super.key});

  @override
  State<CustomFloatingActionButtonScreen> createState() =>
      _CustomFloatingActionButtonScreenState();
}

class _CustomFloatingActionButtonScreenState
    extends State<CustomFloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom floatingActionButton"),
      ),

      /// we can change location of Floating Action Button
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
       /* backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 80,
        ),*/
           label: const Text(
          "Add",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        icon: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}

/// in this video we create custom Floating Action Button
/// complete
/// DONE
