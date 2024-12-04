import 'package:flutter/material.dart';
import 'package:flutter_all_concept/data_transfer/data_show_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.blueAccent.shade100,
                  filled: true,
                  hintText: "Enter name here",
                  label: const Text("Name")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ageController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.blueAccent.shade100,
                  filled: true,
                  hintText: "Enter age here",
                  label: const Text("Age")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                /// data send here
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataShowScreen(
                            age: ageController.text.toString(),
                            name: nameController.text.toString())));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "SEND DATA",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/// in this video data transfer first screen two second screen
/// first screen => First screen
/// second screen => Data Show screen
/// // check
