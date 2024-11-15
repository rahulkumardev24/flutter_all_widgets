import 'package:flutter/material.dart';
import 'package:flutter_all_concept/bottom_navigation_screen.dart';
import 'package:flutter_all_concept/curved_navigation_bar.dart';
import 'package:flutter_all_concept/drawer_screen.dart';
import 'package:flutter_all_concept/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CurvedNavigationScreen()
    );
  }
}

