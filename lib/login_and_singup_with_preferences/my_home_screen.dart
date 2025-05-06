import 'package:flutter/material.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/login_screen.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/widgets/my_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: Colors.orange, blurRadius: 6)],
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/login_signup_assets/girl_image1.jpg"))),
            ),
            const SizedBox(
              height: 21,
            ),
            const Text(
              "Welcome to my Profile",
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 31,
            ),

            /// logout button
            SizedBox(
              width: 300,
              child: MyButton(
                  buttonText: "Logout",
                  btnColor: Colors.red,

                  /// here we logout the user
                  onPressed: () async {
                    SharedPreferences sharedPref =
                        await SharedPreferences.getInstance();
                    await sharedPref.setBool("isLoggedIn", false);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Logout Successfully",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      backgroundColor: Colors.red,
                    ));
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
