import 'package:flutter/material.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/signup_screen.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/widgets/my_button.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/widgets/my_custom_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(150),
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
                                "assets/login_signup_assets/girl_image2.jpg"),
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
                      "Login",
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

                    /// forgot password
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "forgot password ?",
                          style: TextStyle(color: Colors.white38, fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    /// here we show button
                    /// login button
                    MyButton(
                      buttonText: 'Login',
                      onPressed: () async {
                        /// login with the help of shared preference
                        SharedPreferences sharedPref =
                            await SharedPreferences.getInstance();
                        String? saveEmail = sharedPref.getString("email");
                        String? savePassword = sharedPref.getString("password");

                        /// text field check
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          /// email or password check
                          if (emailController.text == saveEmail &&
                              passwordController.text == savePassword) {
                            /// set is loggined
                            await sharedPref.setBool("isLoggedIn", true);

                            /// successfully message
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                "Login Successfully",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              backgroundColor: Colors.greenAccent,
                            ));

                            /// navigate to home screen
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MyHomeScreen()));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Invalid email or password",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              backgroundColor: Colors.red,
                            ));
                          }
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Fill all the required field",
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

                    /// or text
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "or",
                          style: TextStyle(color: Colors.white38, fontSize: 21),
                        ),
                      ],
                    ),

                    /// login with google
                    MyButton(
                      buttonText: 'Login with Google',
                      onPressed: () {},
                      textColor: Colors.white60,
                      btnColor: Colors.white24.withAlpha(30),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have an Account ?",
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),

                  /// text button
                  TextButton(
                      onPressed: () {
                        /// here we navigate to sign up screen
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignupScreen()));
                      },
                      child: const Text(
                        "Sign up",
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
