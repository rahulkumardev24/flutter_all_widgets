import 'package:flutter/material.dart';
import 'package:flutter_all_concept/home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentScreen = 0;

  /// here we create multiple screen
  List<Widget> screen = [
    /// first screen
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.orangeAccent.shade100,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Home Screen",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black, blurRadius: 3)]),
            ),
          ],
        ),
      ),
    ),

    /// search screen
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue.shade100,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Search Screen",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black, blurRadius: 3)]),
            ),
          ],
        ),
      ),
    ),

    /// bookmark screen
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.greenAccent.shade100,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bookmark Screen",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black, blurRadius: 3)]),
            ),
          ],
        ),
      ),
    ),

    /// profile screen
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.pinkAccent.shade100,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Profile Screen",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black, blurRadius: 3)]),
            ),
          ],
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: AppBar(
        title: const Text("Bottom Navigation Screen"),
      ),
      body: screen[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          selectedItemColor: Colors.orange,
          selectedFontSize: 17,
          unselectedItemColor: Colors.black54,
          unselectedFontSize: 14,
          currentIndex: currentScreen,
          onTap: (value) {
            currentScreen = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Profile"),
          ]),
    );
  }
}

/// ------------------------------- IN THIS VIDEO APPLY BOTTOM NAVIGATION ----------------------///
/// SIMPLE STEP
/// FINAL TEST
/// THANK YOU SO MUCH FOR WATCHING
