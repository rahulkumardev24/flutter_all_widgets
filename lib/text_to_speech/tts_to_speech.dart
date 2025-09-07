import 'package:flutter_tts/flutter_tts.dart';

class TTService {
  static final FlutterTts _flutterTts = FlutterTts();

  static Future<void> intTts() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.2);
    await _flutterTts.setPitch(1.2);
  }

  /// --- speak text --- ///
  static Future<void> speakText(String text) async {
    await _flutterTts.speak(text);
  }

  /// --- stop speaking --- ///
  static Future<void> stopSpeaking() async {
    await _flutterTts.stop();
  }
}
