import 'dart:io';
import 'dart:ui' as ui;

import 'package:audio_session/audio_session.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_to_text.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/convert_speecttotext_bloc/bloc/convertspeech_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/recording_list_bloc/recording_list_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/audioplayer.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';

class RecorderState {
  static const String isPlaying = 'PLAYING';
  static const String isRecording = 'Recording';
  static const String initial = 'INITIAL';
  static const String isRecorderPaused = 'RecordingPaused';
  static const String isStopped = 'STOPPED';
  static const String isPlayerPaused = 'PlayerPAUSED';
}

class VoiceRecorderPage extends StatefulWidget {
  const VoiceRecorderPage({super.key});

  @override
  State<VoiceRecorderPage> createState() => _VoiceRecorderPageState();
}

class _VoiceRecorderPageState extends State<VoiceRecorderPage> {
  RecorderController soundRecorder = RecorderController();
  final PlayerController mPlayer = PlayerController();

  String status = RecorderState.initial;
  late String fileName;
  late SpeechToText speech;
  bool isListening = false;
  String liveResponse = '';
  String entireResponse = '';
  String chunkResponse = '';

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SaveRecordingsBloc, SaveRecordingsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (path, convert, name) {
                final convertBloc = BlocProvider.of<ConvertspeechBloc>(context);
                convertBloc.add(ConvertspeechEvent.convertaudiototext(
                    path: path, audioid: ''));
                // RecordingListBloc().add(const RecordingListEvent.fetchList());
                // AppNavigator.pop();
                // AppNavigator.pop();
                // AppNavigator.pop();
                // showSnackBar(
                //     msg: "Saved",
                //     icons: Icons.thumb_up,
                //     iconcolor: Colors.green,
                //     time: 2);
              },
            );
          },
        ),
        BlocListener<ConvertspeechBloc, ConvertspeechState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(loading: () {
              showConvertingDialog(context);
            }, convertedspeech: (speech, path) {
              AppNavigator.pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AudioPage(
                  speech: speech,
                ),
              ));
            }
                // convertedspeech: (speech){

                // }
                );
          },
        ),
      ],
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColors.appBGColor,
          elevation: 0,
          title: Text(
            "",
            style: AppTextStyle.titleTextStyle(),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 300,
              child: Container(
                width: SizeConfig.screenwidth,
                height: SizeConfig.screenheight * .2,
                color: Colors.white54,
                child: Text(
                  // _text,,
                  entireResponse,
                  style: const TextStyle(
                      // Your text style
                      color: Colors.black),
                ),
              ),
            ),
            ScreenSetter(
              child: Center(
                child: AudioWaveforms(
                  size: Size(MediaQuery.of(context).size.width, 500.0),
                  recorderController: soundRecorder,
                  enableGesture: false,
                  waveStyle: WaveStyle(
                    waveColor: Colors.white,
                    durationLinesHeight: 0,
                    waveThickness: 1.5,
                    spacing: 2.0,
                    scaleFactor: 100,
                    showBottom: true,
                    extendWaveform: true,
                    waveCap: StrokeCap.square,
                    showMiddleLine: false,
                    gradient: ui.Gradient.linear(
                      const Offset(70, 50),
                      Offset(MediaQuery.of(context).size.width / 2, 0),
                      [Colors.red, Colors.green],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        height: SizeConfig.sizeMultiplier * 20,
                        width: SizeConfig.widthMultiplier * 91.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.colorPrimary,
                              AppColors.colorSecondary,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () async {
                                File file = File(
                                    "//${(await getApplicationDocumentsDirectory()).path}/Recordings/.aac");
                                if (mPlayer.playerState.isPlaying) {
                                  await mPlayer.stopPlayer();
                                } else if (soundRecorder.isRecording) {
                                  await soundRecorder.stop();
                                }
                                if (await file.exists()) {
                                  file.delete().then((value) {
                                    showSnackBar(
                                        msg: "Cancelled.",
                                        icons: Icons.cancel,
                                        iconcolor: Colors.red,
                                        time: 1);
                                    AppNavigator.pop();
                                  });
                                } else {
                                  AppNavigator.pop();
                                }
                              },
                              child: Card(
                                elevation: 0,
                                shape: const StadiumBorder(),
                                clipBehavior: Clip.hardEdge,
                                child: SizedBox(
                                  height: SizeConfig.sizeMultiplier * 12,
                                  width: SizeConfig.sizeMultiplier * 12,
                                  child: const Icon(
                                    Icons.close,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                                onTap: () async {
                                  if (status != RecorderState.initial) {
                                    soundRecorder.pause();
                                    showRecSaveDialog(
                                      context: context,
                                      path:
                                          "${(await getApplicationDocumentsDirectory()).path}/.aac",
                                    );
                                    // final saveBloc =
                                    //     BlocProvider.of<SaveRecordingsBloc>(
                                    //         context);
                                    // saveBloc.add(SaveRecordingsEvent.saveRecording(
                                    //     path:
                                    //         "${(await getApplicationDocumentsDirectory()).path}/Recordings/.aac",
                                    //     name: fileName));
                                    // setState(() {
                                    //   status = RecorderState.isStopped;
                                    // });
                                  } else {
                                    null;
                                  }
                                },
                                child: Card(
                                    elevation: 0,
                                    shape: const StadiumBorder(),
                                    clipBehavior: Clip.hardEdge,
                                    child: SizedBox(
                                      height: SizeConfig.sizeMultiplier * 12,
                                      width: SizeConfig.sizeMultiplier * 12,
                                      child: const Icon(
                                        Icons.check,
                                      ),
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      elevation: 0,
                      shape: const StadiumBorder(),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: SizeConfig.sizeMultiplier * 25,
                        width: SizeConfig.sizeMultiplier * 25,
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.colorPrimary,
                          ),
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.colorPrimary,
                              AppColors.colorSecondary,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: InkWell(
                          onTap: () async {
                            switch (status) {
                              case RecorderState.initial:
                                {
                                  File file = File(
                                      "${(await getApplicationDocumentsDirectory()).path}/Recordings/.aac");
                                  //startListening();
                                  // if (!(await file.exists())) {
                                  //   await file.();
                                  // }

                                  soundRecorder.record(
                                    path:
                                        "${(await getApplicationDocumentsDirectory()).path}/.aac",
                                  );
                                  setState(() {
                                    status = RecorderState.isRecording;
                                  });
                                }
                                break;
                              case RecorderState.isRecording:
                                {
                                  soundRecorder.pause();
                                  //stopListening();
                                  setState(() {
                                    status = RecorderState.isRecorderPaused;
                                  });
                                }
                                break;
                              case RecorderState.isRecorderPaused:
                                {
                                  soundRecorder.record();

                                  setState(() {
                                    status = RecorderState.isRecording;
                                  });
                                }
                                break;
                              case RecorderState.isStopped:
                                {
                                  //stopListening();
                                  await mPlayer.preparePlayer(
                                    path:
                                        "${(await getApplicationDocumentsDirectory()).path}/Recordings/.aac",
                                    shouldExtractWaveform: true,
                                    noOfSamples: 100,
                                  );
                                  mPlayer.startPlayer();

                                  setState(() {
                                    status = RecorderState.isPlaying;
                                  });
                                }
                                break;
                              case RecorderState.isPlaying:
                                {
                                  mPlayer.pausePlayer();
                                  setState(() {
                                    status = RecorderState.isPlayerPaused;
                                  });
                                }
                                break;
                              case RecorderState.isPlayerPaused:
                                {
                                  mPlayer.startPlayer();
                                  setState(() {
                                    status = RecorderState.isPlaying;
                                  });
                                }
                                break;
                            }
                          },
                          child: Card(
                              elevation: 0,
                              shape: const StadiumBorder(),
                              clipBehavior: Clip.hardEdge,
                              child: SizedBox(
                                child: Icon(
                                  getIcon(status),
                                  size: SizeConfig.sizeMultiplier * 12,
                                  color: AppColors.colorSecondary,
                                ),
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  void startListening() async {
    // speech = SpeechToText();

    bool available = await speech.initialize(
      onStatus: (status) async {
        // print('Speech recognition status: $status AND is LISTENING STATUS ${isListening}');
        if ((status == "done" || status == "notListening") && isListening) {
          await speech.stop();
          setState(() {
            if (chunkResponse != '') {
              entireResponse = '$entireResponse $chunkResponse';
            }
            chunkResponse = '';
            liveResponse = '';
            //MAIN CALLBACK HAPPENS
            // widget.ultraCallback(liveResponse, entireResponse, isListening);
          });
          startListening();
        }
      },
    );

    if (available) {
      setState(() {
        isListening = true;
        liveResponse = '';
        chunkResponse = '';
        // widget.ultraCallback(liveResponse, entireResponse, isListening);
      });
      await speech.listen(
        onResult: (result) {
          setState(() {
            final state = result.recognizedWords;
            liveResponse = state;
            if (result.finalResult) {
              chunkResponse = result.recognizedWords;
            }
            // widget.ultraCallback(liveResponse, entireResponse, isListening);
          });
        },
      );
    } else {
      debugPrint('Ultra Speech ERROR : Speech recognition not available');
    }
  }

  void stopListening() {
    speech.stop();

    setState(() {
      isListening = false;
      entireResponse = '$entireResponse $chunkResponse';
      //widget.ultraCallback(liveResponse, entireResponse, isListening);
    });
  }

  @override
  void dispose() {
    soundRecorder.dispose();
    mPlayer.dispose();
    super.dispose();
  }

  IconData? getIcon(String status) {
    switch (status) {
      case RecorderState.initial:
        {
          return Icons.circle;
        }

      case RecorderState.isRecording:
        {
          return Icons.pause;
        }

      case RecorderState.isRecorderPaused:
        {
          return Icons.circle;
        }

      case RecorderState.isStopped:
        {
          return Icons.play_arrow_rounded;
        }

      case RecorderState.isPlaying:
        {
          return Icons.pause;
        }

      case RecorderState.isPlayerPaused:
        {
          return Icons.play_arrow_rounded;
        }
    }
    return null;
  }

  Future<void> initializeRecorder() async {
    //await soundRecorder.openRecorder();

    await mPlayer.preparePlayer(
      path:
          "${(await getApplicationDocumentsDirectory()).path}/Recordings/$fileName.mp3",
      shouldExtractWaveform: true,
      noOfSamples: 100,
    );
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:
          AVAudioSessionCategoryOptions.allowBluetooth |
              AVAudioSessionCategoryOptions.defaultToSpeaker,
      avAudioSessionMode: AVAudioSessionMode.spokenAudio,
      avAudioSessionRouteSharingPolicy:
          AVAudioSessionRouteSharingPolicy.defaultPolicy,
      avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
      androidAudioAttributes: const AndroidAudioAttributes(
        contentType: AndroidAudioContentType.music,
        flags: AndroidAudioFlags.none,
        usage: AndroidAudioUsage.voiceCommunication,
      ),
      androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
      androidWillPauseWhenDucked: true,
    ));
  }

  void showConvertingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to close the dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Converting Audio'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Your audio is converting to text.'),
                SizedBox(height: 20),
                CircularProgressIndicator(),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                // Implement what happens when the dialog is canceled.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    speech = SpeechToText();
    setState(() {
      DateFormat dateFormat = DateFormat.yMd().add_Hms();
      fileName = dateFormat
          .format(DateTime.now())
          .toString()
          .replaceAll('/', '')
          .replaceAll(' ', '')
          .replaceAll(':', '');
    });
    initializeRecorder();
    super.initState();
  }
}
