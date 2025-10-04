import 'dart:math';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/isar_models/session_details_model/sessiondata.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/views/aichatbot_creation.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/addparticiantbloc/bloc/addparticipant_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/chat_src/response.dart';
import 'package:wellbeings/modules/home_module/blocs/aibotdetails_bloc/bloc/aibotdetails_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/aibotdetailsnew_bloc/bloc/aibotdata_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/create_session/bloc/session_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/session_bloc/bloc/sessiondata_bloc.dart';
import 'package:wellbeings/modules/home_module/models/sessions_model.dart';
import 'package:wellbeings/modules/home_module/widgets/aichatbotaddpopup.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
import 'package:wellbeings/widgets/custom_dialogs.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../../../data/data_center/data_to_classes.dart';
import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';

class homePageDesign extends StatelessWidget {
  const homePageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AibotdataBloc, AibotdataState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(
              aibotdataerror: () {
                snackBarWidget("AI List Error", Icons.warning, Colors.red,
                    Colors.black, Colors.white, 2);
              },
            );
          },
        ),
        BlocListener<SessionBloc, SessionState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(
              newsessionsuccess: (sessionid, name, image, heroid, assistantid,
                  video, istalking) {
                Navigator.pop(context);
                AppNavigator.pushNamed("/chatbothome",
                    arguments: DataToChatBotPage(name, image, sessionid,
                        assistantid, heroid, video, istalking));
              },
            );
          },
        ),
        BlocListener<SessiondataBloc, SessiondataState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(getsessionssuccess: (data, assistantid,
                assistantname, image, heroindex, video, istalking) {
              _showSelectableTilesBottomSheet(
                  context: context,
                  data: data,
                  assistantid: assistantid,
                  assistantname: assistantname,
                  image: image,
                  heroindex: heroindex);
            }, sessionsempty: (assistantid, assistantname, image, heroindex,
                video, istalking) {
              final createnewsession = BlocProvider.of<SessionBloc>(context);
              createnewsession.add(SessionEvent.createnewsession(
                  assstId: assistantid,
                  name: assistantname,
                  image: image,
                  herowidgetstring: heroindex,
                  video: '',
                  isTalking: false));
            }, error: () {
              snackBarWidget("Error", Icons.warning, Colors.red, Colors.black,
                  Colors.white, 2);
            });
          },
        ),
      ],
      child: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight * .6,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white),
        child: BlocBuilder<AibotdataBloc, AibotdataState>(
          builder: (context, state) {
            return state.whenOrNull(aibotdataerror: () {
                  return const Center(child: Text("Error"));
                }, aibotdatasuccess: (model, imagelist) {
                  return ListView.builder(
                      itemCount: model.sessions!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Random random = Random();
                        int randomIndex = random.nextInt(imagelist.length);
                        String randomImage = imagelist[randomIndex].botimage;
                        print(randomImage);
                        return InkWell(
                          onTap: () async {
                            final getsessions =
                                BlocProvider.of<SessiondataBloc>(context);
                            getsessions.add(SessiondataEvent.getsessions(
                              assistantid: model
                                  .sessions![index].uaMap!.assistant!.code!,
                              assistantname: model
                                  .sessions![index].uaMap!.assistant!.name!,
                              // model.assistants[index].name,
                              image: randomImage,
                              heroindex:
                                  "card_//${model.sessions![index].uaMap!.assistant!.name}",
                              istalking: model.sessions![index].uaMap!
                                  .assistant!.isTalking!,
                              avatar_video: model.sessions![index].uaMap!
                                  .assistant!.avatar!.avatarVideo!,
                              //"card_//${model.assistants[index].name}"
                            ));
                          },
                          child: Hero(
                            tag:
                                "card_//${model.sessions![index].uaMap!.assistant!.name}",
                            //"card_${model.assistants[index].name}",
                            child: Container(
                              width: SizeConfig
                                  .screenwidth, // Adjust width as needed
                              // Adjust height as needed
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                image: DecorationImage(
                                  image:
                                      // AssetImage(
                                      //   randomImage,
                                      // ),
                                      NetworkImage(randomImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  // Gradient overlay
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(77, 185, 216, 0.5),
                                          Colors.transparent,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: SizeConfig.screenheight * 0.04,
                                    right: SizeConfig.screenwidth * 0.03,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Implement your logout function here
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return CustomDialogWidget(
                                              title: "Logout!",
                                              content:
                                                  "Are you sure to want to logout ?",
                                              leftButton: CustomButton(
                                                text: "Logout",
                                                onTap: () async {
                                                  FireBaseServices().signOut();
                                                  await IsarServices()
                                                      .logOutUser()
                                                      .then((value) {
                                                    // ZegoUIKitPrebuiltCallInvitationService()
                                                    //     .uninit();
                                                    Navigator
                                                        .pushNamedAndRemoveUntil(
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
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors
                                              .white, // White background for the circle
                                          shape: BoxShape
                                              .circle, // Makes the container a circle
                                        ),
                                        padding: const EdgeInsets.all(
                                            8.0), // Padding for spacing around the icon
                                        child: const Icon(
                                          Icons.logout,
                                          color:
                                              Colors.black, // Black logout icon
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: SizeConfig.screenheight * .04,
                                    left: SizeConfig.screenwidth * .03,
                                    child: Text(
                                      model.sessions![index].uaMap!.assistant!
                                          .name!,
                                      //model.assistants[index].name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: SizeConfig.textMultiplier * 7,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: SizeConfig.screenheight * .019,
                                    left: SizeConfig.screenwidth * .02,
                                    child: Text(
                                      model.sessions![index].uaMap!.assistant!
                                          .expertIn!,
                                      //model.assistants[index].desc,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade200,
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );

                        // return InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) =>
                        //           const AichatbotCreationPage(),
                        //     ));
                        //   },
                        //   child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Container(
                        //         decoration: BoxDecoration(
                        //             color: AppColors.cardCommonBluecolor,
                        //             borderRadius: BorderRadius.circular(10)),
                        //         width: SizeConfig.screenwidth * .3,
                        //         height: SizeConfig.screenheight * 1,
                        //         child: Center(
                        //           child: Padding(
                        //             padding: const EdgeInsets.all(8.0),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.center,
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.center,
                        //               children: [
                        //                 const Icon(Icons.add,
                        //                     color: AppColors.titleBlueColor),
                        //                 Text(
                        //                   " Add New\n Counselor",
                        //                   style: TextStyle(
                        //                       color: AppColors.titleBlueColor,
                        //                       fontSize:
                        //                           SizeConfig.textMultiplier *
                        //                               3.5),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       )),
                        // );
                      });
                }) ??
                const SizedBox();
          },
        ),
      ),
    );
  }
}

Future<void> _showSelectableTilesBottomSheet(
    {required BuildContext context,
    required List<SessionDetail>? data,
    required String? assistantid,
    required String? assistantname,
    required String? image,
    required String? heroindex}) async {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 300.0, // Set a height for the bottom sheet
        child: Column(
          children: [
            const ListTile(
              tileColor: AppColors.appLightBlue,
              title: Text('Select an Session'),
            ),
            InkWell(
              onTap: () {
                final createnewsession = BlocProvider.of<SessionBloc>(context);
                createnewsession.add(SessionEvent.createnewsession(
                    assstId: assistantid,
                    name: assistantname,
                    image: image,
                    herowidgetstring: heroindex,
                    video: '',
                    isTalking: false));
              },
              child: const ListTile(
                tileColor: AppColors.statusBarColor,
                title: Text('Create a new Session'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount:
                    data?.length, // Replace with the actual number of items
                itemBuilder: (BuildContext context, int index) {
                  final session = data?[index];
                  return ListTile(
                    title: Text('session${session?.sessionId}'),
                    onTap: () {
                      // Handle tile selection
                      Navigator.pop(context);
                      AppNavigator.pushNamed("/chatbothome",
                          arguments: DataToChatBotPage(
                              assistantname,
                              image,
                              session?.sessionId,
                              assistantid,
                              heroindex,
                              "",
                              false));

                      print('Selected Option $index');
                      // Close the bottom sheet
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
