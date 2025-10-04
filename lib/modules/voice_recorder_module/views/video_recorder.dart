import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_call_module/blocs/speechtotextbloc/bloc/speechtotext_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wellbeings/modules/paint_module/blocs/projects_fetch_bloc/projects_fetch_bloc.dart';
import 'package:wellbeings/modules/tellusastory_module/bloc/notesbloc/bloc/takenote_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/recording_list_bloc/recording_list_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/custom_dialogs.dart';

List<CameraDescription> _cameras = [];

class RecorderState {
  static const String isPlaying = 'PLAYING';
  static const String isRecording = 'Recording';
  static const String initial = 'INITIAL';
  static const String isRecorderPaused = 'RecordingPaused';
  static const String isStopped = 'STOPPED';
  static const String isPlayerPaused = 'PlayerPAUSED';
}

class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

late CameraController controller;

class _CameraAppState extends State<CameraApp> {
  String? fileName;
  String status = RecorderState.initial;
  @override
  void initState() {
    //final s = IsarServices().cameras();
    cameras().then((value) {
      controller = CameraController(_cameras[0], ResolutionPreset.max);
      setState(() {});
      //controller.initialize();
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      }).catchError((Object e) {
        if (e is CameraException) {
          switch (e.code) {
            case 'CameraAccessDenied':
              // Handle access errors here.
              break;
            default:
              // Handle other errors here.
              break;
          }
        }
      });
    });

    super.initState();

    // CameraController controller = CameraController(const CameraDescription(
    //     name: "j",
    //     lensDirection: CameraLensDirection.back,
    //     sensorOrientation: 90));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaveRecordingsBloc, SaveRecordingsState>(
      listener: (context, state) {
        // TODO: implement listener
        state.whenOrNull(
          success: (path,convert,name) {
            //AppNavigator.pop();
            //AppNavigator.pushReplacementNamed('/recordings');
            //Navigator.popUntil(context, ModalRoute.withName("/recordings"));
            RecordingListBloc().add(const RecordingListEvent.fetchList());
            AppNavigator.pop();
            AppNavigator.pop();
            AppNavigator.pop();
            showSnackBar(
                msg: "Saved",
                icons: Icons.thumb_up,
                iconcolor: Colors.green,
                time: 2);
          },
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              ScreenSetter(
                child: Center(
                  child: CameraPreview(
                    controller,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 20,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child:
                         
                          Center(
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
                                  if (controller.value.isRecordingVideo) {
                                    await controller
                                        .stopVideoRecording()
                                        .then((value) async {
                                      File file = File(value.path);
                                      if (await file.exists()) {
                                        file.delete().then((value) {
                                          showSnackBar(
                                              msg: "Cancelled.",
                                              icons: Icons.cancel,
                                              iconcolor: Colors.red,
                                              time: 1);
                                          Navigator.popUntil(
                                              context,
                                              ModalRoute.withName(
                                                  "/recordings"));
                                          // AppNavigator.pop();
                                        });
                                      } else {
                                        Navigator.popUntil(context,
                                            ModalRoute.withName("/recordings"));
                                      }
                                    });
                                  }

                                  // File file = File(
                                  //     "${(await getApplicationDocumentsDirectory()).path}/Recordings/$fileName.aac");
                                  // if (mPlayer.playerState.isPlaying) {
                                  //   await mPlayer.stopPlayer();
                                  // } else if (soundRecorder.isRecording) {
                                  //   await soundRecorder.stop();
                                  // }
                                  // if (await file.exists()) {
                                  //   file.delete().then((value) {
                                  //     showSnackBar(
                                  //         msg: "Cancelled.",
                                  //         icons: Icons.cancel,
                                  //         iconcolor: Colors.red,
                                  //         time: 1);
                                  //     AppNavigator.pop();
                                  //   });
                                  // } else {
                                  //   AppNavigator.pop();
                                  // }
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
                                      controller.pauseVideoRecording();
                                      showRcSaveDialog(
                                        context: context,
                                      );
                                      // final saveBloc =
                                      //     BlocProvider.of<SaveRecordingsBloc>(
                                      //         context);
                                      // saveBloc.add(SaveRecordingsEvent.saveRecording(
                                      //     path:
                                      //         "${(await getApplicationDocumentsDirectory()).path}/Recordings/$fileName.aac",
                                      //     name: fileName,
                                      //     type: 'video'));
                                      setState(() {
                                        status = RecorderState.isStopped;
                                      });
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
                              final starttakingnotesBloc =
                                  BlocProvider.of<TakenoteBloc>(context);
                              starttakingnotesBloc
                                  .add(const TakenoteEvent.startspeech());
                              switch (status) {
                                case RecorderState.initial:
                                  {
                                    // Directory documentsDirectory =
                                    //     await getApplicationDocumentsDirectory();
                                    // String filePath =
                                    //     '${documentsDirectory.path}/Recordings/$fileName.mp4';
                                    File file = File(
                                        "${(await getApplicationDocumentsDirectory()).path}/Recordings/$fileName.mp4");
                                    print(file.path);
                                    // if (!(await file.exists())) {
                                    //   await file.();
                                    // }

                                    controller.startVideoRecording();
                                    setState(() {
                                      status = RecorderState.isRecording;
                                    });
                                  }
                                  break;
                                case RecorderState.isRecording:
                                  {
                                    controller.pauseVideoRecording();
                                    setState(() {
                                      status = RecorderState.isRecorderPaused;
                                    });
                                  }
                                  break;
                                case RecorderState.isRecorderPaused:
                                  {
                                    controller.resumeVideoRecording();
                                    setState(() {
                                      status = RecorderState.isRecording;
                                    });
                                  }
                                  break;
                                // case RecorderState.isStopped:
                                //   {
                                //     await mPlayer.preparePlayer(
                                //       path:
                                //           "${(await getApplicationDocumentsDirectory()).path}/Recordings/$fileName.aac",
                                //       shouldExtractWaveform: true,
                                //       noOfSamples: 100,
                                //     );
                                //     mPlayer.startPlayer();
                                //     setState(() {
                                //       status = RecorderState.isPlaying;
                                //     });
                                //   }
                                //   break;
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
          // body: SizedBox(
          //   height: MediaQuery.of(context).size.height,
          //   child:

          //    Column(
          //     children: [
          //       Expanded(
          //         child: CameraPreview(
          //           controller,
          //         ),
          //       ),
          //       Container(
          //           color: Colors.blue[50],
          //           width: MediaQuery.of(context).size.width,
          //           height: MediaQuery.sizeOf(context).height * .2,
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               // Icon(controller.value.isRecordingVideo
          //               //     ? Icons.pause
          //               //     : Icons.play_arrow),

          //               Container(
          //                 width: SizeConfig.screenwidth * .8,
          //                 height: SizeConfig.screenheight * .15,
          //                 decoration: const BoxDecoration(
          //                     borderRadius: BorderRadius.all(Radius.circular(10)),
          //                     gradient: LinearGradient(
          //                       colors: [
          //                         AppColors.colorPrimary,
          //                         AppColors.colorSecondary,
          //                       ],
          //                       begin: Alignment.topCenter,
          //                       end: Alignment.bottomCenter,
          //                     )),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                   children: [
          //                     ElevatedButton(
          //                         onPressed: () {
          //                           controller.startVideoRecording();
          //                         },
          //                         child: Text(
          //                           "start video",
          //                           style: AppTextStyle.boldTitleStyle(),
          //                         )),
          //                     ElevatedButton(
          //                         onPressed: () {
          //                           //showSaveVideoAlert(context);
          //                           final videofile =
          //                               controller.stopVideoRecording();
          //                           videofile.then((value) {
          //                             showRcSaveDialog(
          //                                 context: context, path: value.path);
          //                           });
          //                         },
          //                         child: Text(
          //                           "stop video",
          //                           style: AppTextStyle.boldTitleStyle(),
          //                         ))
          //                   ],
          //                 ),
          //                 // child: IconButton(
          //                 //     onPressed: () {
          //                 //       setState(() {
          //                 //         controller.value.isRecordingVideo
          //                 //             ? showSaveVideoAlert(context)
          //                 //             : controller.startVideoRecording();
          //                 //       });
          //                 //     },
          //                 //     icon: FaIcon(
          //                 //         size: SizeConfig.heightMultiplier * 10,
          //                 //         controller.value.isRecordingVideo
          //                 //             ? FontAwesomeIcons.stop
          //                 //             : FontAwesomeIcons.circlePlay)),
          //               )
          //               // InkWell(
          //               //   onTap: () {
          //               //     print(controller.value.isRecordingVideo);
          //               //   },
          //               //   child: const Icon(Icons.ac_unit),
          //               // ),
          //               // ElevatedButton(
          //               //     onPressed: () {
          //               //       controller.startVideoRecording();
          //               //     },
          //               //     child: const Text(
          //               //       "start video",
          //               //       style: TextStyle(),
          //               //     )),
          //               // ElevatedButton(
          //               //     onPressed: () {
          //               //       showSaveVideoAlert(context);
          //               //     },
          //               //     child: const Text(
          //               //       "stop video",
          //               //       style: TextStyle(),
          //               //     ))
          //             ],
          //           ))
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }

  Future<void> cameras() async {
    _cameras = await availableCameras();
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
    }
    return null;
  }

  void showRcSaveDialog({required BuildContext context}) {
    final videofile = controller.stopVideoRecording();
    videofile.then((value) {
      showDialog(
        context: context,
        builder: (context) {
          return SaveDialog(
            defaultName: 'Recordings',
            onSave: (text) async {
              String fileName = value.path.split('/').last;
              final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
              int num = 1;
              String filepath = value.path;
              File file = File(filepath);
              String newFileName = "${text.trim()}.mp4";
              File newFile = File(filepath.replaceAll(fileName, newFileName));
              while (await newFile.exists()) {
                newFileName = "${text.trim()}(${num++}).mp4";
                newFile = File(filepath.replaceAll(fileName, newFileName));
              }
              //await newFile.create();
              file.renameSync(filepath.replaceAll(fileName, newFileName));

              saveBloc.add(SaveRecordingsEvent.saveRecording(
                  path: newFile.path,
                  name: newFileName.split('.').first,
                  type: 'video', connvert: ''));
              // AppNavigator.pushReplacementNamed('/recordings');
              //AppNavigator.pop();
              //Navigator.popUntil(context, ModalRoute.withName("/recordings"));
            },
          );
        },
      );
    });
  }
}
