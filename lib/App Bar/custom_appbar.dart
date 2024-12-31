import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/restaurant.png",
            height: 20,
            width: 20,
          ),
        ),
        actions: [
          const Icon(
            Icons.notifications_none_rounded,
            size: 30,
            color: Colors.white,
          ),
          PopupMenuButton(
            color: Colors.white,
            elevation: 11,
            iconColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
            position: PopupMenuPosition.under,
            shadowColor: Colors.blueAccent,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Setting")
                  ],
                )),
                const PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Logout")
                  ],
                )),
              ];
            },
          )
        ],
        backgroundColor: Colors.blueAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        shadowColor: Colors.black,
        elevation: 11,
      ),
    );
  }
}

/// IN THIS VIDEO WE CREATE CUSTOM APPBAR
/// CUSTOM APPBAR => DONE
///
