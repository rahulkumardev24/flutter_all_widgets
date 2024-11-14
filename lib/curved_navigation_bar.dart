import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_concept/home_screen.dart';

class CurvedNavigationScreen extends StatefulWidget {
  const CurvedNavigationScreen({super.key});

  @override
  State<CurvedNavigationScreen> createState() => _CurvedNavigationBarState();
}

class _CurvedNavigationBarState extends State<CurvedNavigationScreen> {
  /// current screen show defaulter
  int current_screen = 0;

  /// here we create screen you can also call your screen
  List<Widget> screen = [
    /// here we call home screen we already created
    /// FIRST SCREEN
    HomeScreen(),

    /// search screen
    /// SECOND SCREEN
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.greenAccent,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Search Screen",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 3)]),
            )
          ],
        ),
      ),
    ),

    /// favourite screen
    /// THIRD SCREEN
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.greenAccent,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Favourite Screen",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 3)]),
            )
          ],
        ),
      ),
    ),

    /// category screen
    /// FOURTH SCREEN

    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.greenAccent,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Category Screen",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 3)]),
            )
          ],
        ),
      ),
    ),

    /// profile screen
    /// FIFTH SCREEN
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.greenAccent,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Profile Screen",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 3)]),
            )
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curved Navigation bar "),
      ),
      body: screen[current_screen],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blueAccent,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.red,

        onTap: (value){
          setState(() {
            current_screen = value ;
          });

        },
        items: [

          /// here we call
          bottomItem("Home", Icons.home),
          bottomItem("Search", Icons.search),
          bottomItem("Fav", Icons.favorite),
          bottomItem("Cat", Icons.category),
          bottomItem("Profile", Icons.account_circle_outlined),
        ],
      ),
    );
  }

  /// here we create custom widgets for navigation
  Widget bottomItem(String label, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 45,
        width: 45,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Positioned(
                bottom: 0,
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

/// STEP 1
/// ADD DEPENDENCY
/// curved_navigation_bar

/// in this video create CURVED NAVIGATION BAR IN FLUTTER
/// FINAL TEST
