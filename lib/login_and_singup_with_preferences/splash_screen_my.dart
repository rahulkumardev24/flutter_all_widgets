import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_all_concept/home_screen.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_home_screen.dart';

class SplashScreenMy extends StatefulWidget {
  const SplashScreenMy({super.key});

  @override
  State<SplashScreenMy> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenMy> {
  @override
  @override
  void initState() {
    super.initState();
    /// after 2 second navigate to login screen
    Future.delayed(const Duration(seconds: 2), () async {

      /// here we check user is logged in or not
      SharedPreferences sharedPref = await SharedPreferences.getInstance();
      bool isLoggened = sharedPref.getBool("isLoggedIn") ?? false;

      if (isLoggened) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MyHomeScreen()),
        );
      }
      else {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
      }
    });


  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(
              fontSize: 27, color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
