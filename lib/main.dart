import 'package:flutter/material.dart';
import 'package:flutter_all_concept/Image_auto_slider/image_auto_slider.dart';
import 'package:flutter_all_concept/Table/data_table_flutter.dart';
import 'package:flutter_all_concept/botto_sheet/model_bottom_sheet/my_model_bottom_sheet.dart';
import 'package:flutter_all_concept/bottom_navigation_screen.dart';
import 'package:flutter_all_concept/curved_navigation_bar.dart';
import 'package:flutter_all_concept/data_transfer/first_screen.dart';
import 'package:flutter_all_concept/drawer_screen.dart';
import 'package:flutter_all_concept/flutter_snackbar_screen.dart';
import 'package:flutter_all_concept/menu_screen.dart';
import 'package:flutter_all_concept/splash_screen.dart';
import 'package:flutter_all_concept/tab%20in%20flutter/flutter_deafult_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FlutterDeafultTab());
  }
}
