import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;
import 'package:wellbeings/blocs/select_activity_bloc/select_activity_bloc.dart';
import 'package:wellbeings/blocs/uni_link_listener_bloc/uni_link_listener_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/ai_generation/ai_generate.dart';
import 'package:wellbeings/modules/avathar_speaking_module/views/view.dart';
import 'package:wellbeings/modules/home_module/blocs/aibotdetails_bloc/bloc/aibotdetails_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/aibotdetailsnew_bloc/bloc/aibotdata_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/appapdate_bloc/bloc/appupdate_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/create_session/bloc/session_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/subscribe_topics_bloc/subscribe_topics_bloc.dart';
import 'package:wellbeings/modules/home_module/widgets/bottom_nav_bar_widget.dart';
import 'package:wellbeings/modules/home_module/widgets/home_new_design_card.dart';
import 'package:wellbeings/modules/home_module/widgets/homepage_baground_setter.dart';
import 'package:wellbeings/modules/home_module/widgets/recent_card_widget.dart';
import 'package:wellbeings/modules/meditaion_module/models/meditation_model/meditation_model.dart';
import 'package:wellbeings/modules/music_player_module/views/music_player_page.dart';
import 'package:wellbeings/modules/paint_module/blocs/load_painting_bloc/load_painting_bloc.dart';
import 'package:wellbeings/modules/speechtotext_module/views/speechtotext.dart';
import 'package:wellbeings/modules/tellusastory_module/pages/tellusastory.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/video_player_loading_page.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/widgets/appupdate_widget.dart';
import 'package:wellbeings/widgets/custom_dialogs.dart';

import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../meditaion_module/views/meditation_view_all.dart';
import '../../profile_module/bloc/profile_bloc/profile_bloc.dart';
import '../blocs/home_page_bloc/home_page_bloc.dart';
import '../blocs/recent_activities_bloc/recent_activities_bloc.dart';
import '../widgets/activity_card_widget.dart';
import '../widgets/home_top_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String audioPath = "";

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppupdateBloc, AppupdateState>(listener: (context, state) {
          state.whenOrNull(upadteavailable: (link) {
            updateDialog(context, link);
          });
        }),
        BlocListener<SelectActivityBloc, SelectActivityState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (routeName, activityData) {
                if (routeName == '/paintPage') {
                  final loadPaintBloc =
                      BlocProvider.of<LoadPaintingBloc>(context);
                  loadPaintBloc.add(
                    LoadPaintingEvent.loadProject(
                      extImagePath: activityData.first.songUrl,
                      path: '',
                      isDirectPath: true,
                      isarId: activityData.isNotEmpty
                          ? int.parse(activityData.first.activityId.toString())
                          : -1,
                    ),
                  );
                  AppNavigator.pushNamed('/paintPage');
                } else if (routeName == '/musicLoadingPage') {
                  AppNavigator.push<Widget>(MaterialPageRoute(
                    builder: (context) => MusicPlayerPage(playlist: [
                      Activity(
                          activityName: activityData.first.activityName,
                          activityId: '',
                          subTitle: '',
                          activityImage: '',
                          songUrl: activityData.first.songUrl,
                          type: 'recording')
                    ]),
                  ));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              VideoApp(videopath: activityData.first.songUrl)));
                  // AppNavigator.pushNamed(routeName, arguments: activityData);
                }
              },
            );
          },
        ),
        BlocListener<UniLinkListenerBloc, UniLinkListenerState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (filePath) async {
                if (Platform.isAndroid) {
                  final loadPaintBloc =
                      BlocProvider.of<LoadPaintingBloc>(context);
                  audioPath = await getAudioPath(filePath);
                  if (isImageOrAudio(audioPath)) {
                    loadPaintBloc.add(
                      LoadPaintingEvent.loadProject(
                        isDirectPath: false,
                        extImagePath: filePath,
                        path: '',
                        isarId: -1,
                      ),
                    );
                    AppNavigator.pushNamed('/paintPage');
                  } else {
                    AppNavigator.push<Widget>(MaterialPageRoute(
                      builder: (context) => MusicPlayerPage(playlist: [
                        Activity(
                            activityName:
                                path.basenameWithoutExtension(audioPath),
                            activityId: '',
                            subTitle: '',
                            activityImage: '',
                            songUrl: audioPath,
                            type: 'recording')
                      ]),
                    ));
                  }
                } else {
                  if (isImageOrAudio(filePath)) {
                    final loadPaintBloc =
                        BlocProvider.of<LoadPaintingBloc>(context);

                    loadPaintBloc.add(
                      LoadPaintingEvent.loadProject(
                        isDirectPath: false,
                        extImagePath: filePath,
                        path: '',
                        isarId: -1,
                      ),
                    );
                  } else {
                    AppNavigator.push<Widget>(MaterialPageRoute(
                      builder: (context) => MusicPlayerPage(playlist: [
                        Activity(
                            activityName:
                                path.basenameWithoutExtension(filePath),
                            activityId: '',
                            subTitle: '',
                            activityImage: '',
                            songUrl: filePath,
                            type: 'recording')
                      ]),
                    ));
                  }
                }
              },
            );
          },
        ),
        BlocListener<LoadPaintingBloc, LoadPaintingState>(
          listener: (context, state) {
            state.whenOrNull(
              projectLoading: (navigate) {
                if (navigate) {
                  AppNavigator.pushNamed("/paintPage");
                }
              },
            );
          },
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: BlocBuilder<HomePageBloc, HomePageState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                            success:
                                (homePageModel, userName, profilePic, data) {
                              return Column(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        imageUrl: profilePic,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenheight * .01,
                                  ),
                                  Text(
                                    userName,
                                    style: TextStyle(
                                        fontSize: SizeConfig.textMultiplier * 4,
                                        color: Colors.white),
                                  )
                                ],
                              );
                            },
                          ) ??
                          const SizedBox();
                    },
                  ),
                  // Text(
                  //   'Menu',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 24,
                  //   ),
                  // ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Logout'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialogWidget(
                              title: "Logout!",
                              content: "Are you sure to want to logout ?",
                              leftButton: CustomButton(
                                text: "Logout",
                                onTap: () async {
                                  FireBaseServices().signOut();
                                  await IsarServices()
                                      .logOutUser()
                                      .then((value) {
                                    Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      '/welcome',
                                      (route) => false,
                                    );
                                  });
                                },
                              ),
                              rightButton: CustomButton(
                                text: "Cancel",
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: AppColors.appBGColor,
          body: homepaegeBagroundWidget(
            child: Stack(
              children: [
                ScreenSetter(child: BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                          success:
                              (homePageModel, userName, profilePic, datalist) {
                            return SingleChildScrollView(
                              primary: true,
                              physics: const BouncingScrollPhysics(
                                decelerationRate: ScrollDecelerationRate.fast,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(
                                    //   height: SizeConfig.heightMultiplier * 3,
                                    // ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hi, $userName",
                                              style:
                                                  AppTextStyle.boldTitleStyle(
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          5),
                                            ),
                                            Text(
                                              "Good morning",
                                              style: AppTextStyle
                                                  .commonTextStyle(),
                                            )
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            // Navigator.of(context)
                                            //     .push(MaterialPageRoute(
                                            //   builder: (context) =>
                                            //       const stream(),
                                            // ));
                                            FirebaseAnalytics.instance.logEvent(
                                              name: 'profile_page_opened',
                                              parameters: {
                                                'time': DateTime.now()
                                                    .toString(), // You can add more relevant parameters here
                                              },
                                            );
                                            final profileBloc =
                                                BlocProvider.of<ProfileBloc>(
                                                    context);
                                            profileBloc.add(const ProfileEvent
                                                .loadProfile());
                                            AppNavigator.pushNamed(
                                                '/profilepage');
                                            // Navigator.of(context)
                                            //     .push(MaterialPageRoute(
                                            //   builder: (context) =>
                                            //       const FilePickerPage(),
                                            // ));
                                          },
                                          child: Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: const StadiumBorder(),
                                            color: AppColors.cardBgColor,
                                            child: CachedNetworkImage(
                                              imageUrl: profilePic,
                                              height: 52,
                                              width: 52,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                    // SizedBox(
                                    //   height: SizeConfig.screenheight * .1,
                                    // ),
                                    // const homePageDesign(),
                                    SizedBox(
                                      height: SizeConfig.screenheight * .05,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.all(8.0),
                                    //   child: AnimatedTextKit(
                                    //     animatedTexts: [
                                    //       TypewriterAnimatedText(
                                    //         'Take a deep breath—you’re in a safe place to unwind, reflect, and recharge. Tap on avathar to chat with Maya',
                                    //         textStyle:
                                    //             AppTextStyle.largeTitleStyle(),
                                    //         speed:
                                    //             const Duration(milliseconds: 100),
                                    //       ),
                                    //     ],
                                    //     isRepeatingAnimation: false,
                                    //     pause: const Duration(milliseconds: 1000),
                                    //     displayFullTextOnTap: true,
                                    //     stopPauseOnTap: true,
                                    //   ),
                                    // ),
                                    HomeTopCardWidget(),
                                    SizedBox(
                                      height: SizeConfig.screenheight * .01,
                                    ),
                                    BlocBuilder<RecentActivitiesBloc,
                                        RecentActivitiesState>(
                                      builder: (context, state) {
                                        return state.whenOrNull(
                                              success: (recentList, newUser) {
                                                print(recentList);
                                                return recentList.isNotEmpty
                                                    ? Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            newUser
                                                                ? "Enticing experiences are a click away. Explore!"
                                                                : "Recent Activities",
                                                            style: AppTextStyle
                                                                .boldTitleStyle(
                                                              color: AppColors
                                                                  .appBlack,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: SizeConfig
                                                                    .screenheight *
                                                                .01,
                                                          ),
                                                          SizedBox(
                                                            height: SizeConfig
                                                                    .screenheight *
                                                                .11,
                                                            child: ListView
                                                                .builder(
                                                              physics:
                                                                  const BouncingScrollPhysics(
                                                                decelerationRate:
                                                                    ScrollDecelerationRate
                                                                        .fast,
                                                              ),
                                                              itemCount:
                                                                  recentList
                                                                      .length,
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              shrinkWrap: true,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return SizedBox(
                                                                    height:
                                                                        SizeConfig.screenheight *
                                                                            .05,
                                                                    width: SizeConfig
                                                                            .sizeMultiplier *
                                                                        49,
                                                                    child:
                                                                        RecentActivityCardWidget(
                                                                      activityName:
                                                                          recentList[index]
                                                                              .type,
                                                                      duration:
                                                                          recentList[index]
                                                                              .subTitle,
                                                                      ontap:
                                                                          (P0) {
                                                                        final bloc =
                                                                            BlocProvider.of<SelectActivityBloc>(context);
                                                                        bloc.add(SelectActivityEvent.select(
                                                                            activityData:
                                                                                recentList,
                                                                            selectedIndex:
                                                                                index));
                                                                      },
                                                                      imagePath:
                                                                          recentList[index]
                                                                              .activityImage,
                                                                      type: recentList[
                                                                              index]
                                                                          .type,
                                                                    )

                                                                    //     ActivityCardWidget(
                                                                    //   ontap:
                                                                    //       (p0) async {
                                                                    //     final bloc =
                                                                    //         BlocProvider.of<SelectActivityBloc>(
                                                                    //             context);
                                                                    //     bloc.add(SelectActivityEvent.select(
                                                                    //         activityData:
                                                                    //             recentList,
                                                                    //         selectedIndex:
                                                                    //             index));
                                                                    //   },
                                                                    //   activityName:
                                                                    //       recentList[
                                                                    //               index]
                                                                    //           .type,
                                                                    //   duration: recentList[
                                                                    //           index]
                                                                    //       .subTitle,
                                                                    //   imagePath: recentList[
                                                                    //           index]
                                                                    //       .activityImage,
                                                                    // ),
                                                                    );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    : const SizedBox();
                                              },
                                            ) ??
                                            const SizedBox();
                                      },
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenheight * .01,
                                    ),
                                    Text(
                                      "Recommended Activity",
                                      style: AppTextStyle.boldTitleStyle(
                                        color: AppColors.appBlack,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenheight * .01,
                                    ),

                                    GridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: datalist.categorydata.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisSpacing: 2,
                                              mainAxisSpacing: 2,
                                              crossAxisCount:
                                                  SizeConfig.isTablet() ? 4 : 2,
                                              childAspectRatio: 1.1),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            if (datalist.categorydata[index]
                                                    .catId ==
                                                '1004') {
                                              Navigator.pushNamed(
                                                context,
                                                "/paintprojetspage",
                                              );
                                            } else if (datalist
                                                    .categorydata[index]
                                                    .catId ==
                                                '1003') {
                                              Navigator.pushNamed(
                                                context,
                                                "/recordings",
                                              );
                                              // showComingSoonDialog(context);
                                              // Navigator.of(context)
                                              //     .push(MaterialPageRoute(
                                              //   builder: (context) =>
                                              //       TellusaStoryPage(),
                                              // ));
                                            } else if (datalist
                                                    .categorydata[index]
                                                    .catId ==
                                                '1002') {
                                              Navigator.pushNamed(
                                                context,
                                                "/relaxPage",
                                              );
                                            } else {
                                              AppNavigator.push<Widget>(
                                                  MaterialPageRoute(
                                                builder: (context) =>
                                                    ActivityListPage(
                                                        catgory: datalist
                                                            .categorydata[index]
                                                            .catId),
                                              ));
                                            }
                                          },
                                          child: Card(
                                            elevation: 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors
                                                      .cardCommonBluecolor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),

                                              alignment: Alignment.center,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width:
                                                        SizeConfig.screenwidth *
                                                            .8,
                                                    height: SizeConfig
                                                            .screenheight *
                                                        .12,
                                                    child: Image.network(
                                                        datalist
                                                            .categorydata[index]
                                                            .imageUrl),
                                                  ),
                                                  SizedBox(
                                                    height: SizeConfig
                                                            .screenheight *
                                                        .01,
                                                  ),
                                                  Text(
                                                    datalist.categorydata[index]
                                                        .catName,
                                                    style: AppTextStyle
                                                        .boldTitleStyle(
                                                            fontSize: SizeConfig
                                                                    .textMultiplier *
                                                                2.7,
                                                            color: AppColors
                                                                .titleBlueColor),
                                                  ),
                                                ],
                                              ),
                                              //decoration: const BoxDecoration(
                                              // gradient: LinearGradient(
                                              //   colors: [
                                              //     AppColors.colorPrimary,
                                              //     AppColors.colorSecondary,
                                              //   ],
                                              //   begin: Alignment.topCenter,
                                              //   end: Alignment.bottomCenter,
                                              // ),
                                              // ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),

                                    const SizedBox(
                                      height: 108,
                                    )
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
                const Positioned(
                    bottom: 0, left: 0, right: 0, child: BottomNavBar()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> getAudioPath(String filePath) async {
    const platform = MethodChannel("wellbeings/channel");

    final path = await platform.invokeMethod('resolveContent', [filePath]);
    return path;
  }

  @override
  void initState() {
    final aibotdetailsbloc = BlocProvider.of<AibotdataBloc>(context);
    aibotdetailsbloc.add(const AibotdataEvent.getdata());
    final bloc = BlocProvider.of<HomePageBloc>(context);
    bloc.add(const HomePageEvent.fetchHomeData());
    final topicbloc = BlocProvider.of<SubscribeTopicsBloc>(context);
    topicbloc.add(const SubscribeTopicsEvent.fetchTopics());
    final aibotbloc = BlocProvider.of<AibotdetailsBloc>(context);
    aibotbloc.add(const AibotdetailsEvent.fetchdata());
    final appupdatebloc = BlocProvider.of<AppupdateBloc>(context);
    appupdatebloc.add(const AppupdateEvent.checkupdate());
    super.initState();
  }

  bool isImageOrAudio(String path) {
    final mimeType = lookupMimeType(path);

    if (mimeType!.startsWith('image/')) {
      if (kDebugMode) {
        print(mimeType.toString());
      }
      return true;
    } else {
      return false;
    }
  }

  void showComingSoonDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Coming Soon'),
            content: const Text('This feature will be published soon!'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
