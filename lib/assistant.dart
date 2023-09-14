/*import 'package:flutter/material.dart';
import 'p';

// Example chat bubble widget
class ChatBubble extends StatelessWidget {
  final String text;

  ChatBubble(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}

i

// Initialize speech recognition
final stt.SpeechToText _speech = stt.SpeechToText();

// Start listening to voice input
void startListening() async {
  await _speech.listen(
    onResult: (stt.SpeechRecognitionResult result) {
      String userInput = result.recognizedWords;
      // Process and send userInput to the chatbot logic
      // Display user's message in the chat UI
    },
  );
}