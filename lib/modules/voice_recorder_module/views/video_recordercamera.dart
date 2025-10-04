import 'dart:io';
import 'package:ansi_styles/ansi_styles.dart';
// import 'package:better_open_file/better_open_file.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:wellbeings/modules/voice_recorder_module/blocs/convert_speecttotext_bloc/bloc/convertspeech_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/audioplayer.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/videpplayerwithaudio.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/widgets/custom_dialogs.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  final stt.SpeechToText _speech = stt.SpeechToText();
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SaveRecordingsBloc, SaveRecordingsState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(success: (path, convert, videoid) {
              if (convert == "convert") {
                final convertvideoBloc =
                    BlocProvider.of<ConvertspeechBloc>(context);
                convertvideoBloc.add(
                    ConvertspeechEvent.convertaoudiototextfromvideo(
                        path: path, videoid: videoid));
              }
              AppNavigator.pop();
            });
          },
        ),
        BlocListener<ConvertspeechBloc, ConvertspeechState>(
          listener: (context, state) {
            // TODO: implement listener

            state.whenOrNull(errorinvodeoconversion: () {
              AppNavigator.pop();
              AppNavigator.pop();
              snackBarWidget("Error in converting video to text", Icons.warning,
                  Colors.red, Colors.black, Colors.white, 3);
            }, error: () {
              AppNavigator.pop();
            }, loadinfvideoconvert: () {
              showConvertingDialog(context);
            }, convertedspeechfromvide: (speech, path, videoid) {
              AppNavigator.pop();
              // AppNavigator.pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VideoWithSpeechPage(
                        speech: speech,
                        videopath: path,
                        videoid: videoid,
                      )));
            });
          },
        ),
      ],
      child: Scaffold(
        body: Container(
            color: Colors.white,
            child: CameraAwesomeBuilder.awesome(
              onMediaTap: (mediaCapture) async {
                showRcSaveDialog(
                    context: context, path: mediaCapture.captureRequest.path);
                // OpenFile.open(mediaCapture.captureRequest.path);
              },
              saveConfig: SaveConfig.video(
                  pathBuilder: (sensors) async {
                    final Directory extDir = await getTemporaryDirectory();
                    final testDir =
                        await Directory('//${extDir.path}/camerawesome')
                            .create(recursive: true);
                    if (sensors.length == 1) {
                      final String filePath =
                          '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.mp4';
                      // 3.
                      print(filePath);
                      return SingleCaptureRequest(filePath, sensors.first);
                    } else {
                      return MultipleCaptureRequest(
                        {
                          for (final sensor in sensors)
                            sensor:
                                '${testDir.path}/${sensor.position == SensorPosition.front ? 'front_' : "back_"}${DateTime.now().millisecondsSinceEpoch}.jpg',
                        },
                      );
                    }
                  },
                  videoOptions: VideoOptions(
                      enableAudio: true,
                      ios: CupertinoVideoOptions(fps: 10),
                      android: AndroidVideoOptions(
                          fallbackStrategy: QualityFallbackStrategy.lower))),
              // builder: (CameraState state, Preview preview) {
              //   return state.when(
              //     onVideoRecordingMode: (p0) {
              //       print("ggggg");
              //     },
              //   );
              // },
            )),
      ),
    );
  }

  void showRcSaveDialog(
      {required BuildContext context, required String? path}) {
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
                  String text =
                      ''; // Get the text if convert checkbox is marked

                  String newFileName =
                      "${textEditingController.text.trim()}.mp4";
                  File newFile =
                      File(filepath.replaceAll(fileName, newFileName));
                  while (await newFile.exists()) {
                    newFileName = "${text.trim()}(${num++}).mp4";
                    newFile = File(filepath.replaceAll(fileName, newFileName));
                  }
                  file.renameSync(filepath.replaceAll(fileName, newFileName));
                  final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
                  saveBloc.add(SaveRecordingsEvent.saveRecording(
                      path: newFile.path,
                      name: newFileName.split('.').first,
                      type: 'video',
                      connvert: 'convert'));
                } else {
                  String fileName = path!.split('/').last;
                  int num = 1;
                  String? filepath = path;
                  File file = File(filepath);
                  String text =
                      ''; // Get the text if convert checkbox is marked

                  String newFileName =
                      "${textEditingController.text.trim()}.mp4";
                  File newFile =
                      File(filepath.replaceAll(fileName, newFileName));
                  while (await newFile.exists()) {
                    newFileName = "${text.trim()}(${num++}).mp4";
                    newFile = File(filepath.replaceAll(fileName, newFileName));
                  }
                  file.renameSync(filepath.replaceAll(fileName, newFileName));
                  final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
                  saveBloc.add(SaveRecordingsEvent.saveRecording(
                      path: newFile.path,
                      name: newFileName.split('.').first,
                      type: 'video',
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

  // void showRcSaveDialog(
  //     {required BuildContext context, required String? path}) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return SaveDialog(
  //         defaultName: 'Recordings',
  //         onSave: (text) async {
  //           String fileName = path!.split('/').last;
  //           final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
  //           int num = 1;
  //           String? filepath = path;
  //           File file = File(filepath);
  //           String newFileName = "${text.trim()}.mp4";
  //           File newFile = File(filepath.replaceAll(fileName, newFileName));
  //           while (await newFile.exists()) {
  //             newFileName = "${text.trim()}(${num++}).mp4";
  //             newFile = File(filepath.replaceAll(fileName, newFileName));
  //           }
  //           //await newFile.create();
  //           file.renameSync(filepath.replaceAll(fileName, newFileName));

  //           saveBloc.add(SaveRecordingsEvent.saveRecording(
  //               path: newFile.path,
  //               name: newFileName.split('.').first,
  //               type: 'video'));
  //           // AppNavigator.pushReplacementNamed('/recordings');
  //           // AppNavigator.pop();
  //           // AppNavigator.pop();
  //           // AppNavigator.pop();
  //           //Navigator.popUntil(context, ModalRoute.withName("/recordings"));
  //         },
  //       );
  //     },
  //   );
  // }

  void showConvertingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to close the dialog
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Converting video'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Your video is converting to text.'),
                SizedBox(height: 20),
                CircularProgressIndicator(),
              ],
            ),
          ),
          actions: <Widget>[
            // TextButton(
            //   child: const Text('Cancel'),
            //   onPressed: () {
            //     // Implement what happens when the dialog is canceled.
            //     Navigator.of(context).pop();
            //   },
            // ),
          ],
        );
      },
    );
  }
}
