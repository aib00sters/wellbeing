import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';
import 'package:wellbeings/modules/meditaion_module/models/meditation_model/meditation_model.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/recording_list_bloc/recording_list_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/music_player_loading_page.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/video_player_loading_page.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/video_recorder.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../music_player_module/views/music_player_page.dart';

class RecordingListPage extends StatefulWidget {
  const RecordingListPage({super.key});

  @override
  State<RecordingListPage> createState() => _RecordingListPageState();
}

class _RecordingListPageState extends State<RecordingListPage> {
  String selected = '';
  @override
  void initState() {
    RecordingListBloc().add(const RecordingListEvent.fetchList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaveRecordingsBloc, SaveRecordingsState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (path,convert,name) {
            setState(() {
              selected = '';
            });
            RecordingListBloc()..add(const RecordingListEvent.fetchList());
          },
        );
      },
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                // AppNavigator.pushNamed("/home");
                AppNavigator.pop();
              },
              child: const Icon(Icons.arrow_back)),
          elevation: 0,
          backgroundColor: AppColors.appBGColor,
          iconTheme: const IconThemeData(color: AppColors.appBlack),
          title: Text(
            ' My Stories',
            style: AppTextStyle.titleTextStyle(),
          ),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (context) =>
              RecordingListBloc()..add(const RecordingListEvent.fetchList()),
          child: ScreenSetter(
              child: BlocBuilder<RecordingListBloc, RecordingListState>(
            builder: (context, state) {
              return state.whenOrNull(
                    success: (paths) {
                      print("mhjh$paths");
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.start,
                                children: [
                                      InkWell(
                                        onTap: () {
                                          // AppNavigator.pushReplacementNamed(
                                          //     "/voiceRecorderPage");
                                          // AppNavigator.push<Widget>(
                                          //     MaterialPageRoute(
                                          //   builder: (context) =>
                                          //       const MusicPlayerLoadingPage(),
                                          // ));
                                          // _showBottomSheet(context);
                                          Navigator.pushNamed(
                                            context,
                                            "/TellusaStory",
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Card(
                                            elevation: 0,
                                            margin: EdgeInsets.zero,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  color:
                                                      AppColors.colorPrimary),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                12,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height:
                                                  SizeConfig.sizeMultiplier *
                                                      25,
                                              width: SizeConfig.sizeMultiplier *
                                                  25,
                                              child: const Center(
                                                child: Padding(
                                                  padding: EdgeInsets.all(9.0),
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 40,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ] +
                                    paths.map((e) {
                                      print("\x1b[32mdata=${e.type}");
                                      if (e.type == "video") {
                                        return InkWell(
                                          onLongPress: () {
                                            setState(() {
                                              selected = e.name!;
                                            });
                                          },
                                          onTap: () {
                                            // _launchUrl(s: e.filePath.toString());
                                            //Navigator.of(context).build(MaterialPageRoute(builder:()=>))
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VideoApp(
                                                          videopath:
                                                              e.filePath)),
                                            );
                                            print(e.filePath);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Card(
                                                  color: selected == e.name
                                                      ? Colors.red
                                                      : AppColors.cardBgColor,
                                                  elevation: 0,
                                                  margin: EdgeInsets.zero,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      12,
                                                    ),
                                                  ),
                                                  child: SizedBox(
                                                    height: SizeConfig
                                                            .sizeMultiplier *
                                                        25,
                                                    width: SizeConfig
                                                            .sizeMultiplier *
                                                        25,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: selected ==
                                                                e.name
                                                            ? IconButton(
                                                                icon:
                                                                    const Icon(
                                                                  Icons.delete,
                                                                  size: 30,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                onPressed: () {
                                                                  final saveBloc =
                                                                      BlocProvider.of<
                                                                              SaveRecordingsBloc>(
                                                                          context);
                                                                  saveBloc.add(SaveRecordingsEvent.delete(
                                                                      id: e.id,
                                                                      filePath:
                                                                          e.filePath!));
                                                                },
                                                              )
                                                            : const Icon(
                                                                Icons
                                                                    .video_camera_front,
                                                                size: 40,
                                                              ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: SizeConfig
                                                          .sizeMultiplier *
                                                      25,
                                                  child: Text(
                                                    e.name!,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppTextStyle
                                                        .boldTitleStyle(
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          2.6,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: SizeConfig
                                                          .sizeMultiplier *
                                                      25,
                                                  child: Text(
                                                    timeago.format(e.dateTime!),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppTextStyle
                                                        .commonTextStyle(
                                                      color: Colors.grey[600],
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          2.2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                      return InkWell(
                                        onLongPress: () {
                                          setState(() {
                                            selected = e.name!;
                                          });
                                        },
                                        onTap: () {
                                          AppNavigator.push<Widget>(
                                              MaterialPageRoute(
                                            builder: (context) =>
                                                MusicPlayerPage(playlist: [
                                              Activity(
                                                  activityName: e.name!,
                                                  activityId: '',
                                                  subTitle: '',
                                                  activityImage: '',
                                                  songUrl: e.filePath!,
                                                  type: 'recording')
                                            ]),
                                          ));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Card(
                                                color: selected == e.name
                                                    ? Colors.red
                                                    : AppColors.cardBgColor,
                                                elevation: 0,
                                                margin: EdgeInsets.zero,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    12,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: SizeConfig
                                                          .sizeMultiplier *
                                                      25,
                                                  width: SizeConfig
                                                          .sizeMultiplier *
                                                      25,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: selected == e.name
                                                          ? IconButton(
                                                              icon: const Icon(
                                                                Icons.delete,
                                                                size: 30,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              onPressed: () {
                                                                final saveBloc =
                                                                    BlocProvider.of<
                                                                            SaveRecordingsBloc>(
                                                                        context);
                                                                saveBloc.add(
                                                                    SaveRecordingsEvent.delete(
                                                                        id: e
                                                                            .id,
                                                                        filePath:
                                                                            e.filePath!));
                                                              },
                                                            )
                                                          : const Icon(
                                                              Icons.mic,
                                                              size: 40,
                                                            ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                    SizeConfig.sizeMultiplier *
                                                        25,
                                                child: Text(
                                                  e.name!,
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppTextStyle
                                                      .boldTitleStyle(
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        2.6,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                    SizeConfig.sizeMultiplier *
                                                        25,
                                                child: Text(
                                                  timeago.format(e.dateTime!),
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppTextStyle
                                                      .commonTextStyle(
                                                    color: Colors.grey[600],
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        2.2,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                // paths
                                //     .map((e) =>
                                //      InkWell(
                                //           onLongPress: () {
                                //             setState(() {
                                //               selected = e.name!;
                                //             });
                                //           },
                                //           onTap: () {
                                //             AppNavigator.push<Widget>(
                                //                 MaterialPageRoute(
                                //               builder: (context) =>
                                //                   MusicPlayerPage(
                                //                       playlist: [
                                //                     Activity(
                                //                         activityName:
                                //                             e.name!,
                                //                         activityId: '',
                                //                         subTitle: '',
                                //                         activityImage: '',
                                //                         songUrl:
                                //                             e.filePath!,
                                //                         type: 'recording')
                                //                   ]),
                                //             ));
                                //           },
                                //           child: Padding(
                                //             padding:
                                //                 const EdgeInsets.all(8.0),
                                //             child: Column(
                                //               children: [
                                //                 Card(
                                //                   color: selected == e.name
                                //                       ? Colors.red
                                //                       : AppColors
                                //                           .cardBgColor,
                                //                   elevation: 0,
                                //                   margin: EdgeInsets.zero,
                                //                   shape:
                                //                       RoundedRectangleBorder(
                                //                     borderRadius:
                                //                         BorderRadius
                                //                             .circular(
                                //                       12,
                                //                     ),
                                //                   ),
                                //                   child: SizedBox(
                                //                     height: SizeConfig
                                //                             .sizeMultiplier *
                                //                         25,
                                //                     width: SizeConfig
                                //                             .sizeMultiplier *
                                //                         25,
                                //                     child: Center(
                                //                       child: Padding(
                                //                         padding:
                                //                             const EdgeInsets
                                //                                 .all(10.0),
                                //                         child: selected ==
                                //                                 e.name
                                //                             ? IconButton(
                                //                                 icon:
                                //                                     const Icon(
                                //                                   Icons
                                //                                       .delete,
                                //                                   size: 30,
                                //                                   color: Colors
                                //                                       .white,
                                //                                 ),
                                //                                 onPressed:
                                //                                     () {
                                //                                   final saveBloc =
                                //                                       BlocProvider.of<SaveRecordingsBloc>(
                                //                                           context);
                                //                                   saveBloc.add(SaveRecordingsEvent.delete(
                                //                                       id: e
                                //                                           .id,
                                //                                       filePath:
                                //                                           e.filePath!));
                                //                                 },
                                //                               )
                                //                             : const Icon(
                                //                                 Icons.mic,
                                //                                 size: 40,
                                //                               ),
                                //                       ),
                                //                     ),
                                //                   ),
                                //                 ),
                                //                 SizedBox(
                                //                   width: SizeConfig
                                //                           .sizeMultiplier *
                                //                       25,
                                //                   child: Text(
                                //                     e.name!,
                                //                     textAlign:
                                //                         TextAlign.center,
                                //                     maxLines: 2,
                                //                     overflow: TextOverflow
                                //                         .ellipsis,
                                //                     style: AppTextStyle
                                //                         .boldTitleStyle(
                                //                       fontSize: SizeConfig
                                //                               .textMultiplier *
                                //                           2.6,
                                //                     ),
                                //                   ),
                                //                 ),
                                //                 SizedBox(
                                //                   width: SizeConfig
                                //                           .sizeMultiplier *
                                //                       25,
                                //                   child: Text(
                                //                     timeago.format(
                                //                         e.dateTime!),
                                //                     textAlign:
                                //                         TextAlign.center,
                                //                     maxLines: 2,
                                //                     overflow: TextOverflow
                                //                         .ellipsis,
                                //                     style: AppTextStyle
                                //                         .commonTextStyle(
                                //                       color:
                                //                           Colors.grey[600],
                                //                       fontSize: SizeConfig
                                //                               .textMultiplier *
                                //                           2.2,
                                //                     ),
                                //                   ),
                                //                 )
                                //               ],
                                //             ),
                                //           ),
                                //         )
                                //         )
                                //     .toList()),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ) ??
                  const Center(
                    child: CircularProgressIndicator(),
                  );
            },
          )),
        ),
      )),
    );
  }

  void showoptionsAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Select option',
            style: AppTextStyle.boldTitleStyle(),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  AppNavigator.pushReplacementNamed("/voiceRecorderPage");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.audio_file),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Audio",
                        style: AppTextStyle.commonTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  // _pickVideo(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CameraApp()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.video_camera_front),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Video",
                        style: AppTextStyle.commonTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// void _showBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return SizedBox(
//           height: SizeConfig.screenheight * .2,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: SizeConfig.screenwidth * .1,
//               ),
//               InkWell(
//                 onTap: () {
//                   AppNavigator.pushReplacementNamed("/voiceRecorderPage");
//                 },
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.audio_file),
//                     Text("Audio"),
//                   ],
//                 ),
//               ),
//               const Divider(
//                 thickness: 1,
//               ),
//               InkWell(
//                 onTap: () {
//                   // _pickVideo(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const CameraApp()),
//                   );
//                 },
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.video_camera_front),
//                     Text("Video"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       });
// }

// Future<void> _pickVideo(BuildContext context) async {
//   final picker = ImagePicker();
//   final pickedFile = await picker.pickVideo(source: ImageSource.camera);
//   if (pickedFile != null) {
//     // You can handle the picked video file here.
//     print("Video path: ${pickedFile.path}");
//     final saveBloc = BlocProvider.of<SaveRecordingsBloc>(context);
//     saveBloc.add(SaveRecordingsEvent.saveRecording(
//         path: pickedFile.path, name: pickedFile.name, type: 'video'));
//   } else {
//     // User canceled the video picking.
//     print("Video picking canceled");
//   }
// }

// Future<void> _launchUrl({required String s}) async {
//   if (!await launchUrl(Uri.parse(s), mode: LaunchMode.externalApplication)) {
//     throw Exception('Could not launch');
//   }
// }

  // extractMP4StringFromPath(String? path) {
  //   String fileName = path.basename(filePath);
  // String fileExtension = path.extension(fileName);
  // }

