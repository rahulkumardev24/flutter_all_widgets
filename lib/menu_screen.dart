import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Screen"),
      actions: [
        PopupMenuButton(itemBuilder: (BuildContext context){
          return [
            PopupMenuItem(child: Text("Option 1"))
          ];

        })
      ],
      ),
      
    ) ;
  }
}
