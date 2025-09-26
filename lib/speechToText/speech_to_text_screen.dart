import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextScreen extends StatefulWidget {
  const SpeechToTextScreen({super.key});

  @override
  State<SpeechToTextScreen> createState() => _SpeechToTextScreenState();
}

class _SpeechToTextScreenState extends State<SpeechToTextScreen> {
  final SpeechToText _speechToText = SpeechToText();
  bool _isReady = false;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  /// init speech
  void _initSpeech() async {
    _isReady = await _speechToText.initialize();
    setState(() {});
  }

  /// Start Listening
  void _startListening() async {
    if (_isReady) {
      setState(() {
        _textController.text = "";
      });
      await _speechToText.listen(onResult: (result) {
        setState(() {
          _textController.text = result.recognizedWords;
        });
      });
    }
  }

  /// Stop Listening
  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ------ Appbar ----- ///
      appBar: AppBar(
        title: const Text("Speech To Text Convert"),
      ),

      /// -------------- Floating Action Button ------------------- ///
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          _speechToText.isListening ? _stopListening() : _startListening();
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100)),
        child: Icon(
          _speechToText.isListening ? Icons.mic : Icons.mic_off,
          size: 32,
        ),
      ),

      /// ----------------  Body -------------------- ///
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              maxLines: 10,
              style: TextStyle(fontSize: 27, color: Colors.grey.shade800),
              decoration: InputDecoration(
                  hint: Text(
                    "Press mic and Speak",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  filled: true,
                  fillColor: Colors.blue.shade50,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27),
                      borderSide: BorderSide.none)),
            ),
          )
        ],
      ),
    );
  }
}
