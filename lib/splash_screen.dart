import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_all_concept/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    /// you can change the duration according to requirement
    Timer(const Duration(seconds: 3) ,(){
      /// here we navigate to screen , according to requirement you can navigate
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/whatsapp.png",
              width: 100,
            ),
            const SizedBox(
              height: 500,
            ),
            const Text(
              "from",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/meta.png",
                  height: 30,
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Meta",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// in this video create splash screen
/// design part complete 
/// logic part 

/// Final test