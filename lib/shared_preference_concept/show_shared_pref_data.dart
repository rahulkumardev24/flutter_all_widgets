import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowSharedPrefData extends StatefulWidget {
  const ShowSharedPrefData({super.key});

  @override
  State<ShowSharedPrefData> createState() => _ShowSharedPrefDataState();
}

class _ShowSharedPrefDataState extends State<ShowSharedPrefData> {
  String username = "";
  int age = 0;
  String mobile = "";

  /// here we create function for view user
  void viewUser() async {
    final prefs = await SharedPreferences.getInstance();

    /// username get
    username = prefs.getString("username")!;

    /// use age get
    age = prefs.getInt("age")!;

    /// user mob number get
    mobile = prefs.getString("mobile")!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    viewUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade300,
        title: const Text(
          "User Data show ",
          style: TextStyle(fontSize: 21),
        ),
      ),
      backgroundColor: Colors.lightBlue.shade50,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// here we show the data ;

            Text(
              username.isNotEmpty ? "username :  $username " : "No data found",
              style: const TextStyle(fontSize: 27),
            ),
            Text(
              age.toString().isNotEmpty ? "age : $age" : "No data found",
              style: const TextStyle(fontSize: 27),
            ),
            Text(
              mobile.isNotEmpty ? "mobile : $mobile" : "No data found",
              style: const TextStyle(fontSize: 27),
            ),
            const SizedBox(
              height: 81,
            ),

            /// Delete button
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();

                /// To remove a single key
                await prefs.remove("username");
                await prefs.remove("age");
                await prefs.remove("mob");

                /// Optionally show confirmation
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("User data deleted")),
                );

                /// Optional: Reset local variables and refresh UI
                setState(() {
                  username = '';
                  age = 0;
                  mobile = '';
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "Delete User",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            )
          ],
        ),
      )),
    );
  }
}
