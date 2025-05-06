import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String buttonText;
  VoidCallback onPressed;
  Color btnColor ;
  Color textColor ;
  MyButton({super.key,
    required this.buttonText,
    required this.onPressed ,
    this.btnColor = Colors.orange ,
    this.textColor = Colors.black ,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: btnColor),
          child: Text(
            buttonText,
            style:TextStyle(
                fontSize: 21, color: textColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}
