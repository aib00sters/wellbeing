import 'dart:io';
//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:record_mp3_plus/record_mp3_plus.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/meditaion_module/models/meditation_model/meditation_model.dart';
import 'package:wellbeings/modules/music_player_module/music_player_text_page.dart';
import 'package:wellbeings/modules/music_player_module/views/music_player_page.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/convert_speecttotext_bloc/bloc/convertspeech_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/audioplayer.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';

class Audiosession extends StatefulWidget {
  const Audiosession({super.key});

  @override
  _AudiosessionState createState() => _AudiosessionState();
}

class _AudiosessionState extends State<Audiosession> {
  String statusText = "Press the mic to start recording";
  bool isComplete = false;
  String recordFilePath = "";
  AudioPlayer audioPlayer = AudioPlayer();
  IconData recordBtnIcon = Icons.mic_none;
  Color recordBtnColor = AppColors.titleBlueColor;

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SaveRecordingsBloc, SaveRecordingsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (path, convert, audioid) {
                if (convert == "convert") {
                  final convertvideoBloc =
                      BlocProvider.of<ConvertspeechBloc>(context);
                  convertvideoBloc.add(ConvertspeechEvent.convertaudiototext(
                      path: path, audioid: audioid));
                }

                showSnackBar(
                    msg: "Data Saved",
                    icons: Icons.done,
                    iconcolor: Colors.green,
                    time: 3);

                AppNavigator.pop();
                // final convertBloc = BlocProvider.of<ConvertspeechBloc>(context);
                // convertBloc
                //     .add(ConvertspeechEvent.convertaudiototext(path: path));
              },
            );
            // TODO: implement listener
          },
        ),
        BlocListener<ConvertspeechBloc, ConvertspeechState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(
              error: () {
                AppNavigator.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Error in Converting text")));
              },
              errorinvodeoconversion: () {
                AppNavigator.pop();
                snackBarWidget("Error in convertong a text", Icons.warning,
                    Colors.red, Colors.black, Colors.white, 3);
              },
              loading: () {
                showConvertingDialog(context);
              },
              convertedspeech: (speech, path) {
                AppNavigator.pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MusicPlayerTextPage(
                          playlist: [
                            Activity(
                                activityName: "Voice note",
                                activityId: '',
                                subTitle: '',
                                activityImage: '',
                                songUrl: path,
                                type: 'recording')
                          ],
                          speech: speech,
                        )));
              },
            );
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 100,
                icon: Icon(recordBtnIcon),
                color: recordBtnColor,
                onPressed: () {
                  if (RecordMp3.instance.status == RecordStatus.IDEL) {
                    startRecord();
                  } else if (RecordMp3.instance.status ==
                      RecordStatus.RECORDING) {
                    stopRecord();
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  statusText,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.largeTitleStyle(),
                ),
              ),
              if (isComplete)
                ElevatedButton(
                  onPressed: () {
                    play();
                  },
                  child: const Text("Play Recording"),
                ),
              const SizedBox(
                height: 10,
              ),
              if (isComplete)
                ElevatedButton(
                  onPressed: () async {
                    // showRecSaveDialog(
                    //   context: context,
                    //   path: recordFilePath,
                    // );
                    showRcSaveDialog(context: context, path: recordFilePath);
                  },
                  child: const Text("Save your audio"),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void showConvertingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to close the dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Converting Audio',
            style: AppTextStyle.boldTitleStyle(),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Your audio is converting to text.',
                  style: AppTextStyle.commonTextStyle(),
                ),
                SizedBox(height: SizeConfig.screenheight * .02),
                SizedBox(
                    width: SizeConfig.screenwidth * .05,
                    height: SizeConfig.screenheight * .05,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ))
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Cancel'),
          //     onPressed: () {
          //       // Implement what happens when the dialog is canceled.
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }

  Future<bool> checkPermission() async {
    if (!await Permission.microphone.isGranted) {
      PermissionStatus status = await Permission.microphone.request();
      if (status != PermissionStatus.granted) {
        return false;
      }
    }
    return true;
  }

  void startRecord() async {
    bool hasPermission = await checkPermission();
    if (hasPermission) {
      setState(() {
        statusText = "Recording in progress...";
        recordBtnIcon = Icons.mic_off;
        recordBtnColor = AppColors.titleBlueColor;
      });
      recordFilePath = await getFilePath();
      isComplete = false;
      RecordMp3.instance.start(recordFilePath, (type) {
        setState(() {
          statusText = "Record error: $type";
        });
      });
    } else {
      setState(() {
        statusText = "Microphone permission not granted";
      });
    }
  }

  void stopRecord() {
    bool s = RecordMp3.instance.stop();
    if (s) {
      setState(() {
        statusText = "Recording completed";
        isComplete = true;
        recordBtnIcon = Icons.mic_none;
        recordBtnColor = AppColors.titleBlueColor;
      });
    }
  }

  void play() {
    if (File(recordFilePath).existsSync()) {
      //audioPlayer.play(DeviceFileSource(recordFilePath));
    }
  }

  int i = 0;

  Future<String> getFilePath() async {
    Directory storageDirectory = await getApplicationDocumentsDirectory();
    String sdPath = "${storageDirectory.path}/record";
    Directory d = Directory(sdPath);
    if (!d.existsSync()) {
      d.createSync(recursive: true);
    }
    return "$sdPath/record_${i++}.mp3";
  }
}

void showRcSaveDialog({required BuildContext context, required String? path}) {
  bool convertToText = false; // Track whether the convert checkbox is marked
  TextEditingController textEditingController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Save Recording'),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      isCollapsed: true,
                      //labelText: 'File Name',
                      //hintText: 'Enter file name',
                    ),
                    autofocus: true,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Color(0xff1f3d58),
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Convert to text'),
                  value: convertToText,
                  onChanged: (value) {
                    setState(() {
                      convertToText = value!;
                    });
                  },
                ),
              ],
            );
          },
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (convertToText) {
                // Logic to convert video to text
                // Example: text = await convertVideoToText(filepath);
                String fileName = path!.split('/').last;

                int num = 1;
                String? filepath = path;
                File file = File(filepath);
                String text = ''; // Get the text if convert checkbox is marked

                String newFileName = "${textEditingController.text.trim()}.mp3";
                File newFile = File(filepath.replaceAll(fileName, newFileName));
                while (await newFile.exists()) {
                  newFileName = "${text.trim()}(${num++}).mp3";
                  newFile = File(filepath.replaceAll(fileName, newFileName));
                }
                file.renameSync(filepath.replaceAll(fileName, newFileName));
                final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
                saveBloc.add(SaveRecordingsEvent.saveRecording(
                    path: newFile.path,
                    name: newFileName.split('.').first,
                    type: 'audio',
                    connvert: 'convert'));
              } else {
                String fileName = path!.split('/').last;
                int num = 1;
                String? filepath = path;
                File file = File(filepath);
                String text = ''; // Get the text if convert checkbox is marked

                String newFileName = "${textEditingController.text.trim()}.mp3";
                File newFile = File(filepath.replaceAll(fileName, newFileName));
                while (await newFile.exists()) {
                  newFileName = "${text.trim()}(${num++}).mp3";
                  newFile = File(filepath.replaceAll(fileName, newFileName));
                }
                file.renameSync(filepath.replaceAll(fileName, newFileName));
                final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
                saveBloc.add(SaveRecordingsEvent.saveRecording(
                    path: newFile.path,
                    name: newFileName.split('.').first,
                    type: 'audio',
                    connvert: ''));
                Navigator.of(context).pop();
              }
            },
            child: const Text('Save'),
          ),
        ],
      );
    },
  );
}

// import 'dart:io';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'dart:async';
// import 'package:path_provider/path_provider.dart';
// import 'package:record_mp3/record_mp3.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:wellbeings/modules/voice_recorder_module/blocs/convert_speecttotext_bloc/bloc/convertspeech_bloc.dart';
// import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
// import 'package:wellbeings/modules/voice_recorder_module/views/audioplayer.dart';
// import 'package:wellbeings/utilities/app_functions.dart';
// import 'package:wellbeings/utilities/app_navigator.dart';

// class Audiosession extends StatefulWidget {
//   const Audiosession({super.key});

//   @override
//   _AudiosessionState createState() => _AudiosessionState();
// }

// class _AudiosessionState extends State<Audiosession> {
//   String statusText = "";
//   bool isComplete = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MultiBlocListener(
//         listeners: [
//           BlocListener<SaveRecordingsBloc, SaveRecordingsState>(
//             listener: (context, state) {
//               state.whenOrNull(success: (path) {
//                 final convertBloc = BlocProvider.of<ConvertspeechBloc>(context);
//                 convertBloc
//                     .add(ConvertspeechEvent.convertaudiototext(path: path));
//               });
//               // TODO: implement listener
//             },
//           ),
//           BlocListener<ConvertspeechBloc, ConvertspeechState>(
//             listener: (context, state) {
//               state.whenOrNull(
//                 loading: () {
//                   showConvertingDialog(context);
//                 },
//                 convertedspeech: (speech) {
//                   AppNavigator.pop();
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => AudioPage(
//                       speech: speech,
//                     ),
//                   ));
//                 },
//               );
//               // TODO: implement listener
//             },
//           ),
//         ],
//         child: Scaffold(
//           body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Expanded(
//                   child: GestureDetector(
//                     child: Container(
//                       height: 48.0,
//                       decoration: BoxDecoration(color: Colors.red.shade300),
//                       child: const Center(
//                         child: Text(
//                           'start',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     onTap: () async {
//                       startRecord();
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   child: GestureDetector(
//                     child: Container(
//                       height: 48.0,
//                       decoration: BoxDecoration(color: Colors.blue.shade300),
//                       child: Center(
//                         child: Text(
//                           RecordMp3.instance.status == RecordStatus.PAUSE
//                               ? 'resume'
//                               : 'pause',
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     onTap: () {
//                       pauseRecord();
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   child: GestureDetector(
//                     child: Container(
//                       height: 48.0,
//                       decoration: BoxDecoration(color: Colors.green.shade300),
//                       child: const Center(
//                         child: Text(
//                           'stop',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     onTap: () {
//                       stopRecord();
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   showRecSaveDialog(
//                     context: context,
//                     path: recordFilePath,
//                   );
//                 },
//                 child: const Text("Saveyour audio")),
//             Padding(
//               padding: const EdgeInsets.only(top: 20.0),
//               child: Text(
//                 statusText,
//                 style: const TextStyle(color: Colors.red, fontSize: 20),
//               ),
//             ),
//             GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onTap: () {
//                 play();
//               },
//               child: Container(
//                 margin: const EdgeInsets.only(top: 30),
//                 alignment: AlignmentDirectional.center,
//                 width: 100,
//                 height: 50,
//                 child: isComplete
//                     ? const Text(
//                         "play",
//                         style: TextStyle(color: Colors.red, fontSize: 20),
//                       )
//                     : Container(),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }

//   Future<bool> checkPermission() async {
//     if (!await Permission.microphone.isGranted) {
//       PermissionStatus status = await Permission.microphone.request();
//       if (status != PermissionStatus.granted) {
//         return false;
//       }
//     }
//     return true;
//   }

//   void startRecord() async {
//     bool hasPermission = await checkPermission();
//     if (hasPermission) {
//       statusText = "Recording...";
//       recordFilePath = await getFilePath();
//       isComplete = false;
//       RecordMp3.instance.start(recordFilePath, (type) {
//         statusText = "Record error--->$type";
//         setState(() {});
//       });
//     } else {
//       statusText = "No microphone permission";
//     }
//     setState(() {});
//   }

//   void pauseRecord() {
//     if (RecordMp3.instance.status == RecordStatus.PAUSE) {
//       bool s = RecordMp3.instance.resume();
//       if (s) {
//         statusText = "Recording...";
//         setState(() {});
//       }
//     } else {
//       bool s = RecordMp3.instance.pause();
//       if (s) {
//         statusText = "Recording pause...";
//         setState(() {});
//       }
//     }
//   }

//   void stopRecord() {
//     bool s = RecordMp3.instance.stop();
//     if (s) {
//       statusText = "Record complete";
//       isComplete = true;
//       setState(() {});
//     }
//   }

//   void resumeRecord() {
//     bool s = RecordMp3.instance.resume();
//     if (s) {
//       statusText = "Recording...";
//       setState(() {});
//     }
//   }

//   String recordFilePath = "";

//   void play() {
//     if (File(recordFilePath).existsSync()) {
//       AudioPlayer audioPlayer = AudioPlayer();

//       audioPlayer.play(DeviceFileSource(recordFilePath));
//     }
//   }

//   int i = 0;

//   Future<String> getFilePath() async {
//     Directory storageDirectory = await getApplicationDocumentsDirectory();
//     String sdPath = "${storageDirectory.path}/record";
//     var d = Directory(sdPath);
//     if (!d.existsSync()) {
//       d.createSync(recursive: true);
//     }
//     return "$sdPath/test_${i++}.mp3";
//   }

//   void showConvertingDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierDismissible: false, // User must tap button to close the dialog
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Converting Audio'),
//           content: const SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 Text('Your audio is converting to text.'),
//                 SizedBox(height: 20),
//                 CircularProgressIndicator(),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('Cancel'),
//               onPressed: () {
//                 // Implement what happens when the dialog is canceled.
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
