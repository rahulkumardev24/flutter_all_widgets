import 'package:flutter/material.dart';
import 'package:flutter_all_concept/home_screen.dart';

class FlutterSnackbarScreen extends StatefulWidget {
  const FlutterSnackbarScreen({super.key});

  @override
  State<FlutterSnackbarScreen> createState() => _FlutterSnackbarScreenState();
}

class _FlutterSnackbarScreenState extends State<FlutterSnackbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar Message"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// This is my elevated button
            ElevatedButton(

                /// apply logic here we click on button shoe snack bar message
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    closeIconColor: Colors.red,
                    showCloseIcon: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                    content: const Text(
                      "Successfully update",
                      style: TextStyle(fontSize: 22),
                    ),

                    /// here we add action button
                    action: SnackBarAction(
                        label: "UNDO",
                        textColor: Colors.black87,
                        onPressed: () {
                          /// you can also navigate to other screen --> here we navigate home screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  "Show Snack bar Message",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      shadows: [Shadow(color: Colors.black87, blurRadius: 5)]),
                )),
          ],
        ),
      ),
    );
  }
}

/// final test
