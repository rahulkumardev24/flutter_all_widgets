import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home screen "),),
      backgroundColor: Colors.orangeAccent,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Home Screen" , style: TextStyle(fontSize: 50 , color: Colors.white),),

        ],
      ),),
    );
  }
}
