import 'package:flutter/material.dart';
import 'package:flutter_all_concept/home_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Navigation"),
      ),

      /// here we apply drawer navigation
      drawer: Drawer(
        backgroundColor: Colors.amberAccent.shade100,
        child: ListView(
          children: [
            /// this my drawer header
            DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://plus.unsplash.com/premium_photo-1661751776826-0ac0ed5b8424?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D"),
                          fit: BoxFit.cover)),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Priya Rani",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          shadows: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 3,
                                offset: Offset(1.0, 1.0))
                          ]),
                    ),
                    Text(
                      "priyarani4@gmail.com",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          shadows: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 1,
                                offset: Offset(1.0, 1.0))
                          ]),
                    ),
                  ],
                ),
              ],
            )),

            /// drawer body part
            ListTile(
              title: const Text("Home screen"),
              leading: const Icon(
                Icons.home,
                size: 25,
                color: Colors.blue,
              ),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Setting"),
              leading: const Icon(
                Icons.settings,
                size: 25,
                color: Colors.blue,
              ),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(
                Icons.account_box,
                size: 25,
                color: Colors.blue,
              ),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Payment"),
              leading: Icon(
                Icons.payment,
                size: 25,
                color: Colors.blue,
              ),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(
                Icons.help,
                size: 25,
                color: Colors.blue,
              ),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(
                Icons.logout,
                size: 25,
                color: Colors.red,
              ),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Screen",
              style: TextStyle(
                  fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

///---------------------- DRAWER NAVIGATION APPLY IN THIS VIDEO ---------------///
/// final test
