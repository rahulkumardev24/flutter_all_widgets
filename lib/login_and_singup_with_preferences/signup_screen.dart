import 'package:flutter/material.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/login_screen.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/widgets/my_button.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/widgets/my_custom_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final mqData = MediaQuery.of(context);
    return Scaffold(
      /// background color
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// image
              Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: mqData.size.height * 0.3,
                    width: mqData.size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(150),
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white24,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/login_signup_assets/girl_image1.jpg"),
                            fit: BoxFit.cover)),
                  )),

              /// signup text
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 21.0, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Signup ",
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),

                    const SizedBox(
                      height: 21,
                    ),

                    /// email text field
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 21, color: Colors.white70),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    MyCustomField(controller: emailController),
                    const SizedBox(
                      height: 18,
                    ),

                    /// password
                    const Text(
                      "Password",
                      style: TextStyle(fontSize: 21, color: Colors.white70),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    MyCustomField(controller: passwordController),
                    const SizedBox(
                      height: 18,
                    ),

                    const Text(
                      "Confirm Password",
                      style: TextStyle(fontSize: 21, color: Colors.white70),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    MyCustomField(controller: confirmPasswordController),

                    const SizedBox(
                      height: 18,
                    ),

                    /// here we show button
                    MyButton(
                      buttonText: 'Sing up',
                      onPressed: () async {
                        /// here we signup with the help of shared preference
                        SharedPreferences sharedPref =
                            await SharedPreferences.getInstance();

                        /// filed check
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty &&
                            confirmPasswordController.text.isNotEmpty) {
                          /// password and confirm password check
                          if (passwordController.text !=
                              confirmPasswordController.text) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                "Password is not match",
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                            ));
                          } else {
                            /// email set
                            await sharedPref.setString(
                                "email", emailController.text);

                            /// password set
                            await sharedPref.setString(
                                "password", passwordController.text);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                "Your account is successfully created",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              backgroundColor: Colors.green,
                            ));

                            /// after navigate to login screen
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const LoginScreen()));
                          }
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Fill all the required field ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            backgroundColor: Colors.red,
                          ));
                        }
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),

                    /// if you have already account
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have an Account ?",
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),

                  /// text button
                  TextButton(
                      onPressed: () {
                        /// here we navigate to login screen
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.orange),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// Login and sing up with preferences
/// Step 1 => Done
/// Add shared preference dependency
/// Step 2 => Done
/// create Signup screen
/// Step 3 => Done
/// Create login screen
/// Step 4 => Done
/// create splash screen
/// Step 5 => Done
/// Create home screen
/// Step 6 => Done
/// Signup with the help of shared preference -> in Signup screen
/// Step 7 => Done
/// login with the help of shared preference -> in login screen
/// Step 8 => Done
/// session mention with the help of shared preference
/// Step 9 => Done
/// final test
