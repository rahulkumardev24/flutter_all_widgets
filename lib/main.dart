import 'package:flutter/material.dart';
import 'package:flutter_all_concept/App%20Bar/custom_appbar.dart';
import 'package:flutter_all_concept/Image_auto_slider/image_auto_slider.dart';
import 'package:flutter_all_concept/Table/data_table_flutter.dart';
import 'package:flutter_all_concept/botto_sheet/model_bottom_sheet/my_model_bottom_sheet.dart';
import 'package:flutter_all_concept/bottom_navigation_screen.dart';
import 'package:flutter_all_concept/curved_navigation_bar.dart';
import 'package:flutter_all_concept/data_transfer/first_screen.dart';
import 'package:flutter_all_concept/drawer_screen.dart';
import 'package:flutter_all_concept/floating%20action%20button/custom_floating_action_button_screen.dart';
import 'package:flutter_all_concept/floating%20action%20button/flutter_expandable_fab_button_screen.dart';
import 'package:flutter_all_concept/flutter_snackbar_screen.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/my_home_screen.dart';
import 'package:flutter_all_concept/login_and_singup_with_preferences/signup_screen.dart';
import 'package:flutter_all_concept/menu_screen.dart';
import 'package:flutter_all_concept/shared_preference_concept/shared_preferences.dart';
import 'package:flutter_all_concept/splash_screen.dart';
import 'package:flutter_all_concept/tab%20in%20flutter/flutter_deafult_tab.dart';
import 'package:flutter_all_concept/text_to_speech/text_to_speech_screen.dart';
import 'package:flutter_all_concept/url_launcher/contact_screen.dart';
import 'package:flutter_all_concept/youtube%20video/youtube_video_player.dart';
import 'package:flutter_all_concept/youtube/playlist_videos_screen.dart';
import 'package:flutter_all_concept/youtube/youtube_channel_screen.dart';

import 'App Bar/scrollable_appbar.dart';
import 'Dialog Box In Flutter/alert_dialog_box.dart';
import 'login_and_singup_with_preferences/splash_screen_my.dart';

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
        home: TextToSpeechScreen());
  }
}
