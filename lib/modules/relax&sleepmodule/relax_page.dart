import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/data_center/data_to_classes.dart';
import 'package:wellbeings/modules/home_module/widgets/homepage_baground_setter.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/modules/relax&sleepmodule/bloc/item_listing_bloc/relax_bloc.dart';
import 'package:wellbeings/modules/relax&sleepmodule/bloc/load_category_bloc/load_cat_bloc.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

class RelaxPage extends StatefulWidget {
  const RelaxPage({super.key});

  @override
  State<RelaxPage> createState() => _RelaxPageState();
}

class _RelaxPageState extends State<RelaxPage> {
  @override
  void initState() {
    // TODO: implement initState

    final loarCatbloc = BlocProvider.of<LoadCatBloc>(context);
    loarCatbloc.add(const LoadCatEvent.getCatEvent());

    final relaxvideosbloc = BlocProvider.of<RelaxBloc>(context);
    relaxvideosbloc.add(const RelaxEvent.fetchcontents(tag: "all"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        body: homepaegeBagroundWidget(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 8,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back)),
                    ),
                    SizedBox(
                      width: SizeConfig.screenwidth * .2,
                    ),
                    Text(
                      "Relax and Healing music",
                      style: TextStyle(fontSize: SizeConfig.sizeMultiplier * 4),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 14,
                width: SizeConfig.screenwidth,
                // color: Colors.green,
                child: Row(
                  children: [
                    Center(
                      child: BlocBuilder<LoadCatBloc, LoadCatState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () {
                              return const SizedBox();
                            },
                            catGetFail: () {
                              return const SizedBox();
                            },
                            catGetSuccess: (catNames) {
                              return SizedBox(
                                width: SizeConfig.screenwidth,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: catNames
                                      .length, // Number of items in the list
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        final relaxvideosbloc =
                                            BlocProvider.of<RelaxBloc>(context);
                                        relaxvideosbloc.add(
                                            RelaxEvent.fetchcontents(
                                                tag: catNames[index]));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 25,
                                            bottom: 25),
                                        child: SizedBox(
                                          width:
                                              SizeConfig.widthMultiplier * 20,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // This is where you add the border
                                              border: Border.all(
                                                color: Colors
                                                    .grey, // Set border color
                                                width: 1.3, // Set border width
                                              ),
                                              borderRadius: BorderRadius.circular(
                                                  12), // Optional: if you need the border to be rounded
                                            ),
                                            child: Center(
                                              child: Text(
                                                catNames[index],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: SizeConfig.screenwidth,
                height: SizeConfig.screenheight * .68,

                // color: Colors.amber,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.sizeMultiplier * 2.8),
                    child: BlocBuilder<RelaxBloc, RelaxState>(
                      builder: (context, state) {
                        return state.whenOrNull(Error: () {
                              return const Center(
                                child: Text("Error"),
                              );
                            }, success: (videodata) {
                              print("length =${videodata.length}");
                              return ListView.builder(
                                itemCount: videodata.length,
                                // gridDelegate:
                                //     const SliverGridDelegateWithFixedCrossAxisCount(
                                //         crossAxisCount: 2,
                                //         mainAxisSpacing: 10,
                                //         crossAxisSpacing: 10),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      if (videodata[index]["file_type"] ==
                                          "audio") {
                                        Navigator.pushNamed(
                                            context, '/audioPlayer',
                                            arguments: DataToMediapages(
                                                videodata[index]["file_title"],
                                                videodata[index]["file_dec"],
                                                videodata[index]["file_path"],
                                                videodata[index]
                                                    ["file_thumbnail"]));
                                      } else {
                                        Navigator.pushNamed(
                                            context, "/videoPlayer",
                                            arguments: DataToMediapages(
                                                videodata[index]["file_title"],
                                                videodata[index]["file_dec"],
                                                videodata[index]["file_path"],
                                                videodata[index]
                                                    ["file_thumbnail"]));
                                      }
                                    },
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(children: [
                                                Container(
                                                  width:
                                                      SizeConfig.screenwidth *
                                                          .3,
                                                  height:
                                                      SizeConfig.screenheight *
                                                          .12,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          videodata[index][
                                                              "file_thumbnail"]),
                                                    ),
                                                  ),
                                                ),
                                                Positioned.fill(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      videodata[index][
                                                                  "file_type"] ==
                                                              "audio"
                                                          ? Icons.audio_file
                                                          : Icons
                                                              .play_circle_filled,
                                                      color: Colors.white
                                                          .withOpacity(0.7),
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      videodata[index]
                                                          ["file_title"],
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: SizeConfig
                                                              .widthMultiplier *
                                                          55,
                                                      child: const Text(
                                                        maxLines: 2,
                                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since ",
                                                        style: TextStyle(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: SizeConfig
                                                              .widthMultiplier *
                                                          55,
                                                      child: const Text(
                                                        maxLines: 2,
                                                        "03:00",
                                                        style: TextStyle(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }) ??
                            const SizedBox();
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Future<void> _launchUrl({required String url}) async {
  String urldata = url;
  if (!await launchUrl(Uri.parse(urldata),
      mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch');
  }
}

void addDocument() async {
  try {
    // Get a reference to the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Add a new document with a generated ID
    await firestore.collection('relaxandsleep').add({
      'file_dec': "fileDec",
      'file_path': "filePath",
      'file_tag': "fileTag",
      'file_thumbnail': "fileThumbnail",
      'file_title': "fileTitle",
      'file_type': "fileType",
      'fileid': "fileId",
    });

    print('Document added successfully!');
  } catch (e) {
    print('Error adding document: $e');
  }
}
