import 'package:flutter/material.dart';

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({super.key});

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alert Dialog Box",
          style: TextStyle(
            fontSize: 22,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: ElevatedButton(

                  /// HERE WE APPLY
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              "Are you sure to Delete ? ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            shadowColor: Colors.black,
                            elevation: 10,
                            backgroundColor: Colors.blue.shade100,
                            alignment: Alignment.center,
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Item is deleted")));
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Ok",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.green),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.red),
                                  )),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.red),
                  child: const Text(
                    "Alert Dialog Box",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

/// IN THIS VIDEO WE SHOW ALERT DIALOG BOX WHEN CLICKING ON ALERT DIALOG BOX BUTTON
/// COMPLETE
/// FINAL CHECK
