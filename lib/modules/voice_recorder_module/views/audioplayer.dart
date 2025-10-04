import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:wellbeings/widgets/button_widget.dart';

class AudioPage extends StatefulWidget {
  final String speech;

  const AudioPage({super.key, required this.speech});
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  final AudioPlayer audioPlayer = AudioPlayer();
  String dynamicText = "Initial Text"; // Starting text, change as needed

  @override
  void initState() {
    super.initState();
    // Load your audio or handle any initialization
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // This container represents the audio player section
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.blueGrey, // Just for distinction
            child: Center(
                // Your audio player widget here
                child: GradientButton(
              text: "Play",
              onTap: () {
                audioPlayer.play();
              },
            )
                // FlatButton(
                //   child: Text("Play"),
                //   onPressed: () {
                //     audioPlayer.play();
                //     // Replace with your audio file's URL
                //   },
                // ),
                ),
          ),
          // This container represents the dynamic text section
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.tealAccent, // Just for distinction
                child: Center(
                  child: Text(widget.speech,
                      style:
                          const TextStyle(fontSize: 24, color: Colors.amber)),
                  // Dynamic text is displayed here
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Add methods to change dynamicText and manage audio state as needed
}
