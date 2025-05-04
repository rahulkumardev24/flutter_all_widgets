import 'package:flutter/material.dart';
import 'package:flutter_all_concept/shared_preference_concept/show_shared_pref_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({super.key});

  @override
  State<SharedPreferencesScreen> createState() => _SharedPreferencesState();
}

class _SharedPreferencesState extends State<SharedPreferencesScreen> {
  /// here we create controller
  final userNameController = TextEditingController();
  final ageController = TextEditingController();
  final mobController = TextEditingController();

  /// here we create function for add user
  void addUser() async {
    final prefs = await SharedPreferences.getInstance();

    /// set username
    await prefs.setString("username", userNameController.text);

    /// set age
    await prefs.setInt("age", int.parse(ageController.text));

    /// set mobile number
    await prefs.setString("mobile", mobController.text);

    /// here we show snack bar
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        "Successfully Added",
        style: TextStyle(fontSize: 21, color: Colors.white70),
      ),
      backgroundColor: Colors.green,
    ));

    /// here we clear the text field
    userNameController.clear();
    ageController.clear();
    mobController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: AppBar(
        title: const Text(
          "Shared preference",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.lightBlue.shade50,

      /// body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// userName
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  label: const Text("Username"),
                  hintText: "Enter username here ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.greenAccent.shade100,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// age
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  label: const Text("Age"),
                  hintText: "Enter age here ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.greenAccent.shade100,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              /// mobile number
              TextField(
                controller: mobController,
                decoration: InputDecoration(
                  label: const Text("Mob.number"),
                  hintText: "Enter mobile number here ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.greenAccent.shade100,
                  filled: true,
                ),
              ),

              const SizedBox(
                height: 51,
              ),

              /// Add button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// add button
                  ElevatedButton(

                      /// here we call add user function
                      onPressed: addUser,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          foregroundColor: Colors.blue),
                      child: const Text(
                        " + Add user",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      )),

                  /// view button
                  ElevatedButton(

                      /// here we call add user function
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ShowSharedPrefData()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          foregroundColor: Colors.blue),
                      child: const Text(
                        "View Data",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

/// ui part complete
/// implete code
