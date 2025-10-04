import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wellbeings/main.dart';
import 'package:wellbeings/modules/speechtotext_module/views/audiorecorder.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/audiorecorder.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/video_recorder.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/video_recordercamera.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/voice_recorder_page.dart';
import 'package:wellbeings/utilities/app_styles.dart';

class TellUsaStoryPage extends StatefulWidget {
  const TellUsaStoryPage({super.key});

  @override
  State<TellUsaStoryPage> createState() => _TellUsaStoryPageState();
}

class _TellUsaStoryPageState extends State<TellUsaStoryPage> {
  final List<Widget> pages = [
    const CameraPage(),
    //const VoiceRecorderPage(),
    Audiosession()
    //const SpeechToTextUltraWidgetImplementation()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Make a note",
                style: AppTextStyle.titleTextStyle(),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // IconButton(
                  //   icon: const Icon(Icons.arrow_downward),
                  //   onPressed: () async {
                  // Handle download button press

                  // final saveBloc =
                  //     BlocProvider.of<SaveRecordingsBloc>(
                  //         context);
                  // saveBloc.add(SaveRecordingsEvent.saveRecording(
                  //     path:
                  //         "${(await getApplicationDocumentsDirectory()).path}/Recordings/$fileName.aac",
                  //     name: fileName,
                  //     type: 'video'));

                  //   },
                  // ),
                  // const Text(
                  //   "save",
                  //   style: TextStyle(
                  //     color: Colors.blue,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 18,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
          actions: const <Widget>[],
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.blue.shade200,
          onTap: (index) {
            if (index == 2) {
              // Execute your functionality here
              // For example, call a function or show a dialog
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Ai Assistant"),
                  content: const Text("This feature will be updated soon"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            } else {
              setState(() {
                currentIndex = index;
              });
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.blue.shade500,
                foregroundColor: Colors.white,
                child: Icon(Icons.videocam, color: Colors.blue.shade900),
              ),
              label: "Video",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.blue.shade500,
                foregroundColor: Colors.white,
                child: Icon(Icons.mic, color: Colors.blue.shade900),
              ),
              label: "Audio",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.blue.shade500,
                foregroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.blue.shade900),
              ),
              label: "Ai Assistant",
            ),
          ],
        ),
      ),
    );
  }
}
