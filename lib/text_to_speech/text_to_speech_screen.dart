import 'package:flutter/material.dart';
import 'package:flutter_all_concept/text_to_speech/tts_to_speech.dart';

class TextToSpeechScreen extends StatefulWidget {
  const TextToSpeechScreen({super.key});

  @override
  State<TextToSpeechScreen> createState() => _TextToSpeechScreenState();
}

class _TextToSpeechScreenState extends State<TextToSpeechScreen> {
  @override
  void initState() {
    super.initState();
    TTService.intTts();
  }

  final _speechTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text To Speech"),
      ),
      body: Center(
        child: Column(
          children: [
            /// ----- Text ----- ////
            Text(
              "How are Your",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),

            TextField(
              controller: _speechTextController,
            ),
            const SizedBox(
              height: 21,
            ),

            SizedBox(
              height: 80,
              width: 80,
              child: ElevatedButton(

                  /// ---
                  onPressed: () {
                    TTService.speakText(_speechTextController.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                          side: const BorderSide(
                              width: 2, color: Colors.blueAccent))),
                  child: const Icon(
                    Icons.volume_up_rounded,
                    size: 32,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
