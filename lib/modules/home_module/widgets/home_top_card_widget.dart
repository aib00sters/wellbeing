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
import 'package:wellbeings/widgets/custom_snackbar.dart';

import '../../../data/data_center/data_to_classes.dart';
import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';

class HomeTopCardWidget extends StatelessWidget {
  final List<String> quotes = [
    "Brilliant things happen in calm minds. Be calm. You're brilliant.",
    "In the midst of movement and chaos, keep stillness inside of you.",
    "Quiet the mind and the soul will speak.",
    "Meditation is hanging out with your soul.",
    "Mediation and concentration are the way to a life of serenity"
  ];

  final gradientColors = [
    [
      const Color(0xFFffafbd),
      const Color(0xFFffc3a0),
    ],
    [const Color(0xFFffafbd), const Color(0xFFffc3a0)],
    [const Color(0xFFffafbd), const Color(0xFFffc3a0)],
    [const Color(0xFFffafbd), const Color(0xFFffc3a0)],
  ];

  HomeTopCardWidget({super.key});
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
                        assistantid, heroid, "", false));

                //  AppNavigator.pushNamed("/chatbothome",
                //     arguments: DataToChatBotPage(
                //         assistantname,
                //         image,
                //         session.sessionId,
                //         assistantid,
                //         heroindex,
                //         "",
                //         false));
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
                  video: video,
                  isTalking: istalking));
            }, error: () {
              snackBarWidget("Error", Icons.warning, Colors.red, Colors.black,
                  Colors.white, 2);
            });
          },
        ),
      ],
      child: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight * .2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: BlocBuilder<AibotdataBloc, AibotdataState>(
          builder: (context, state) {
            return state.whenOrNull(aibotdataerror: () {
                  return const Center(child: Text("Error"));
                }, aibotdatasuccess: (model, imagelist) {
                  return ListView.builder(
                      itemCount: model.sessions!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        // Random random = Random();
                        // int randomIndex = random.nextInt(imagelist.length);
                        // String randomImage = imagelist[randomIndex].botimage;
                        // print(randomImage);
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 4),
                          child: InkWell(
                            onTap: () async {
                              // print(
                              //     "https://myndboosters.com${model.sessions![index].uaMap!.assistant!.avatar!.avatarImg ?? ''}");
                              final getsessions =
                                  BlocProvider.of<SessiondataBloc>(context);
                              getsessions.add(SessiondataEvent.getsessions(
                                  assistantid: model
                                      .sessions![index].uaMap!.assistant!.code!,
                                  assistantname: model
                                      .sessions![index].uaMap!.assistant!.name!,
                                  // model.assistants[index].name,
                                  image: model.sessions![index].uaMap!
                                      .assistant!.avatar!.avatarImg,
                                  heroindex:
                                      "card_//${model.sessions![index].uaMap!.assistant!.name}",
                                  avatar_video: model.sessions![index].uaMap!
                                      .assistant!.avatar!.avatarVideo!,
                                  istalking: model.sessions![index].uaMap!
                                      .assistant!.isTalking!
                                  //"card_//${model.assistants[index].name}"
                                  ));

                              // final data = await IsarServices().getSessions();
                              // if (data.isEmpty) {

                              //   final createnewsession =
                              //       BlocProvider.of<SessionBloc>(context);
                              //   createnewsession.add(
                              //       SessionEvent.createnewsession(
                              //           assstId: model.assistants[index].id,
                              //           name: model.assistants[index].name,
                              //           image: "assets/images/female .png",
                              //           herowidgetstring:
                              //               "card_//${model.assistants[index].name}"));
                              // } else {
                              //   _showSelectableTilesBottomSheet(
                              //       context: context);
                              // }
                              // final createnewsession =
                              //     BlocProvider.of<SessionBloc>(context);
                              // createnewsession.add(SessionEvent.createnewsession(
                              //     assstId: model.assistants[index].id,
                              //     name: model.assistants[index].name,
                              //     image: "assets/images/female .png",
                              //     herowidgetstring:
                              //         "card_${model.assistants[index].name}"));
                              // FirebaseAnalytics.instance.logEvent(
                              //   name: 'aibotopen',
                              //   parameters: {
                              //     'time': DateTime.now().toString(),
                              //     "aibot": model.assistants[index]
                              //         .name // You can add more relevant parameters here
                              //   },
                              // );
                            },
                            child: Hero(
                              tag:
                                  "card_//${model.sessions![index].uaMap!.assistant!.name}",
                              //"card_${model.assistants[index].name}",
                              child: Container(
                                width: SizeConfig.screenwidth *
                                    .4, // Adjust width as needed
                                // Adjust height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image:
                                        // AssetImage(
                                        //   randomImage,
                                        // ),

                                        NetworkImage(
                                      'https://myndboosters.com${model.sessions![index].uaMap!.assistant!.avatar!.avatarImg ?? ''}',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    // Gradient overlay
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
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
                                      bottom: SizeConfig.screenheight * .04,
                                      left: 2,
                                      child: Text(
                                        model.sessions![index].uaMap!.assistant!
                                            .name!,
                                        //model.assistants[index].name,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.textMultiplier * 4,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: SizeConfig.screenheight * .02,
                                      left: SizeConfig.screenwidth * .02,
                                      child: Text(
                                        model.sessions![index].uaMap!.assistant!
                                            .expertIn!,
                                        //model.assistants[index].desc,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade200,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                  final createnewsession =
                      BlocProvider.of<SessionBloc>(context);
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

  //BlocBuilder<AibotdetailsBloc, AibotdetailsState>(
  //   builder: (context, state) {
  //     return state.whenOrNull(error: () {
  //           return const Text("error");
  //         }, sucess: (aidata, baseurl) {
  //           return ListView.builder(
  //               itemCount: aidata.aidetails.length + 1,
  //               scrollDirection: Axis.horizontal,
  //               itemBuilder: (context, index) {
  //                 if (index < aidata.aidetails.length) {
  //                   return Padding(
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 2, vertical: 4),
  //                     child: InkWell(
  //                       onTap: () {
  //                         FirebaseAnalytics.instance.logEvent(
  //                           name: 'aibotopen',
  //                           parameters: {
  //                             'time': DateTime.now().toString(),
  //                             "aibot": aidata.aidetails[index]
  //                                 .assistantId // You can add more relevant parameters here
  //                           },
  //                         );
  //                         AppNavigator.pushNamed("/chatbothome",
  //                             arguments: DataToChatBotPage(
  //                                 aidata.aidetails[index].botname,
  //                                 aidata.aidetails[index].botimage,
  //                                 aidata.aidetails[index].threadId,
  //                                 aidata.aidetails[index].assistantId,
  //                                 "card_${aidata.aidetails[index].botname}",
  //                                 baseurl));
  //                       },
  //                       child: Hero(
  //                         tag: "card_${aidata.aidetails[index].botname}",
  //                         child: Container(
  //                           width: SizeConfig.screenwidth *
  //                               .4, // Adjust width as needed
  //                           // Adjust height as needed
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(20),
  //                             image: DecorationImage(
  //                               image: NetworkImage(
  //                                   aidata.aidetails[index].botimage),
  //                               fit: BoxFit.cover,
  //                             ),
  //                           ),
  //                           child: Stack(
  //                             children: [
  //                               // Gradient overlay
  //                               Container(
  //                                 decoration: BoxDecoration(
  //                                   borderRadius:
  //                                       BorderRadius.circular(20),
  //                                   gradient: const LinearGradient(
  //                                     begin: Alignment.bottomCenter,
  //                                     end: Alignment.topCenter,
  //                                     colors: [
  //                                       Color.fromRGBO(77, 185, 216, 0.5),
  //                                       Colors.transparent,
  //                                     ],
  //                                   ),
  //                                 ),
  //                               ),
  //                               Positioned(
  //                                 bottom: SizeConfig.screenheight * .04,
  //                                 left: SizeConfig.screenwidth * .13,
  //                                 child: Text(
  //                                   aidata.aidetails[index].botname,
  //                                   style: TextStyle(
  //                                     color: Colors.white,
  //                                     fontSize:
  //                                         SizeConfig.textMultiplier * 5,
  //                                     fontWeight: FontWeight.bold,
  //                                   ),
  //                                 ),
  //                               ),
  //                               Positioned(
  //                                 bottom: SizeConfig.screenheight * .02,
  //                                 left: SizeConfig.screenwidth * .02,
  //                                 child: Text(
  //                                   aidata
  //                                       .aidetails[index].botdescription,
  //                                   style: TextStyle(
  //                                     fontWeight: FontWeight.bold,
  //                                     color: Colors.blue.shade200,
  //                                     fontSize: 14,
  //                                   ),
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   );
  //                 } else {
  //                   return InkWell(
  //                     onTap: () {
  //                       Navigator.of(context).push(MaterialPageRoute(
  //                         builder: (context) =>
  //                             const AichatbotCreationPage(),
  //                       ));
  //                     },
  //                     child: Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                               color: AppColors.cardCommonBluecolor,
  //                               borderRadius: BorderRadius.circular(10)),
  //                           width: SizeConfig.screenwidth * .3,
  //                           height: SizeConfig.screenheight * 1,
  //                           child: Center(
  //                             child: Padding(
  //                               padding: const EdgeInsets.all(8.0),
  //                               child: Column(
  //                                 crossAxisAlignment:
  //                                     CrossAxisAlignment.center,
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.center,
  //                                 children: [
  //                                   const Icon(Icons.add,
  //                                       color: AppColors.titleBlueColor),
  //                                   Text(
  //                                     " Add New\n Counselor",
  //                                     style: TextStyle(
  //                                         color: AppColors.titleBlueColor,
  //                                         fontSize:
  //                                             SizeConfig.textMultiplier *
  //                                                 3.5),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                         )),
  //                   );
  //                 }
  //               });
  //         }) ??
  //         const SizedBox();
  //   },
  // ),
}

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Morning';
  }
  if (hour < 17) {
    return 'Afternoon';
  }
  return 'Evening';
}
