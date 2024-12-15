import 'package:flutter/material.dart';
import 'package:flutter_all_concept/botto_sheet/model_bottom_sheet/my_model_bottom_sheet.dart';
import 'package:flutter_all_concept/bottom_navigation_screen.dart';
import 'package:flutter_all_concept/curved_navigation_bar.dart';
import 'package:flutter_all_concept/home_screen.dart';

class FlutterDeafultTab extends StatefulWidget {
  const FlutterDeafultTab({super.key});

  @override
  State<FlutterDeafultTab> createState() => _FlutterDeafultTabState();
}

class _FlutterDeafultTabState extends State<FlutterDeafultTab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Default Tab bar "),
            bottom: const TabBar(
                unselectedLabelColor: Colors.black45,
                indicatorColor: Colors.deepOrange,
                labelColor: Colors.deepOrange,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_filled),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.video_collection),
                    text: "Video",
                  ),
                  Tab(
                    icon: Icon(Icons.notifications),
                    text: "Notification",
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: "Person",
                  ),
                ]),
          ),

          /// here we show tabs related contain
          body: TabBarView(

              /// you can also craete here multiple screen for all tabs
              /// here we call the screen
              children: [
                HomeScreen(),
                const MyModelBottomSheet(),
                const CurvedNavigationScreen(),
                const BottomNavigationScreen()
              ]),
        ),
      ),
    );
  }
}

/// in this video create tab bar
/// flutter default tab bar
/// complete
/// final check
