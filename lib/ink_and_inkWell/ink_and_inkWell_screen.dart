import 'package:flutter/material.dart';

class InkAndInkwellScreen extends StatefulWidget {
  const InkAndInkwellScreen({super.key});

  @override
  State<InkAndInkwellScreen> createState() => _InkAndInkwellScreenState();
}

class _InkAndInkwellScreenState extends State<InkAndInkwellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ink And Inkwell"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// First
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Center(
                      child: Text(
                    "Container",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ),
              ),

              /// ---- Ink ---- //
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(200),
                child: Ink(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Center(
                      child: Text(
                    "Ink",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
