import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/aiaisstantadd_bloc/aichatbot_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/getassistantpicsbloc/bloc/getassistant_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectImagebloc/bloc/selectimage_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectaiassistantpic/bloc/selectaiassistant_bloc.dart';

import 'package:wellbeings/modules/login_module/views/signinpage.dart';
import 'package:wellbeings/modules/login_module/widgets/loadingoverlay.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/firehelper.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';
import 'package:wellbeings/widgets/finalimageselection.dart';
import 'package:wellbeings/widgets/image_widget.dart';
import 'package:wellbeings/widgets/showCominsoondialog.dart';

class AichatbotCreationPage extends StatefulWidget {
  const AichatbotCreationPage({super.key});

  @override
  State<AichatbotCreationPage> createState() => _AichatbotCreationPageState();
}

class _AichatbotCreationPageState extends State<AichatbotCreationPage> {
  final textcontroller1 = TextEditingController();

  final textcontroller2 = TextEditingController();

  File? _imageFile;
  String _selectedindex = "";
  String Seletedimage = "";

  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = pickedImage != null ? File(pickedImage.path) : null;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    final getaiassistantlist = BlocProvider.of<GetassistantBloc>(context);
    getaiassistantlist.add(const GetassistantEvent.getavathar());
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    BlocProvider.of<GetassistantBloc>(context).close();
    BlocProvider.of<SelectimageBloc>(context).close();
    BlocProvider.of<SelectaiassistantBloc>(context).close();
    BlocProvider.of<AichatbotBloc>(context).close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SelectimageBloc, SelectimageState>(
            listener: (context, state) {
          state.whenOrNull(
            uploadedimage: (imagepath) {
              LoadingOverlay().hide(context);
              Navigator.pop(context);
              final selectaiassistant =
                  BlocProvider.of<SelectaiassistantBloc>(context);
              selectaiassistant.add(SelectaiassistantEvent.selectedaiassistant(
                  imagelink: imagepath));
            },
            selectedimage: (imagepath) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ImageCompletionAlert(
                    imagepath: imagepath,
                  );
                },
              );
            },
          );
        }),
        BlocListener<AichatbotBloc, AichatbotState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(
              error: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("There is an error")));
              },
              sucess: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Sucessfully added")));
                Navigator.pushNamed(context, '/home');
                textcontroller1.clear();
                textcontroller2.clear();
              },
            );
          },
        ),
        BlocListener<SelectaiassistantBloc, SelectaiassistantState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(aiassistantselected: (imagelink) {
              Seletedimage = imagelink;
            });
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(),
        body: LoginBackgroundWidget(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.screenheight * .01,
                  ),
                  // Container(
                  //   width: SizeConfig.screenwidth * .1,
                  //   height: SizeConfig.screenheight * .12,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey,

                  //     borderRadius: BorderRadius.circular(100),
                  //     // Fit the image inside the circle
                  //   ),
                  //   child: const Icon(Icons.person),
                  // ),

                  BlocBuilder<SelectaiassistantBloc, SelectaiassistantState>(
                    builder: (BuildContext context, state) {
                      return state.whenOrNull(aiassistantselected: (imagelink) {
                            return CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: SizeConfig.sizeMultiplier * 15,
                              backgroundImage: NetworkImage(imagelink),
                            );
                          }, initial: () {
                            return CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: SizeConfig.sizeMultiplier * 15,
                                child: const Icon(Icons.person));
                          }) ??
                          const SizedBox();
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenwidth * .1,
                        vertical: SizeConfig.screenwidth * .02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Choose your counselor or upload your own",
                          style: AppTextStyle.commonTextStyle(),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<GetassistantBloc, GetassistantState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                              initial: () => const SizedBox(),
                              error: () {
                                return const SizedBox();
                              },
                              sucess: (avatharimages) {
                                return SizedBox(
                                  height: SizeConfig.screenheight * .1,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: avatharimages.length + 1,
                                    // Change this to the number of items you have
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      if (index == 0) {
                                        return InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return ImageSelectionAlert();
                                              },
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircleAvatar(
                                              radius:
                                                  SizeConfig.sizeMultiplier *
                                                      10,
                                              child: const Icon(Icons.camera),
                                            ),
                                          ),
                                        );
                                      } else {
                                        int adjustedIndex = index - 1;
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizeConfig.screenwidth * .01,
                                              vertical:
                                                  SizeConfig.screenwidth * .01),
                                          child: InkWell(
                                            onTap: () {
                                              final selectaiassistant =
                                                  BlocProvider.of<
                                                          SelectaiassistantBloc>(
                                                      context);
                                              selectaiassistant.add(
                                                  SelectaiassistantEvent
                                                      .selectedaiassistant(
                                                          imagelink: avatharimages[
                                                                  adjustedIndex]
                                                              ["imageUrl"]));
                                              setState(() {
                                                _selectedindex =
                                                    adjustedIndex.toString();
                                              });

                                              // final setaiassistant =
                                              //     BlocProvider.of<
                                              //             SelectassistantBloc>(
                                              //         context);
                                              // setaiassistant.add(
                                              //     SelectassistantEvent
                                              //         .putavathar(
                                              //             avtharlink:
                                              //                 avatharimages[
                                              //                         index][
                                              //                     "imageUrl"]));
                                            },
                                            child: Container(
                                              width:
                                                  SizeConfig.screenwidth * .17,
                                              height:
                                                  SizeConfig.screenheight * .1,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: _selectedindex ==
                                                          index.toString()
                                                      ? Colors
                                                          .blue // Set border color to blue if selected
                                                      : Colors
                                                          .transparent, // Set border color to transparent if not selected
                                                  width: 2.0, // Border width
                                                ),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  fit: BoxFit
                                                      .fill, // Fit the image inside the circle
                                                  image: NetworkImage(
                                                      avatharimages[
                                                              adjustedIndex]
                                                          ["imageUrl"]),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                );
                              }) ??
                          const SizedBox();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenheight * .02,
                        vertical: SizeConfig.screenheight * .005),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Counselor Details",
                          style: AppTextStyle.boldTitleStyle(
                              fontSize: SizeConfig.textMultiplier * 3.5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .015,
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .06,
                    width: SizeConfig.screenwidth * .9,
                    child: TextField(
                      controller: textcontroller1,
                      decoration: const InputDecoration(
                          labelText: "What is Counselor name?",
                          //labelStyle: AppTextStyle.commonTextStyle(),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Name"),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .01,
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .06,
                    width: SizeConfig.screenwidth * .9,
                    child: TextField(
                      // enabled: false,
                      decoration: InputDecoration(
                          labelText: "Counselor Voice",
                          suffixIcon: InkWell(
                            onTap: () => showComingSoonDialog(context),
                            child: const Icon(Icons.upload),
                          ),

                          //labelStyle: AppTextStyle.commonTextStyle(),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "voice"),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .01,
                  ),
                  SizedBox(
                    width: SizeConfig.screenwidth * .9,
                    child: TextField(
                      controller: textcontroller2,
                      maxLines: 5,
                      decoration: const InputDecoration(
                          labelText: "What assistance do you require?",
                          //labelStyle: AppTextStyle.commonTextStyle(),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Need of the counselor"),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .03,
                  ),
                  SizedBox(
                    width: SizeConfig.screenwidth * .9,
                    height: SizeConfig.screenheight * .07,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 164, 208, 243)),
                        onPressed: () {
                          if (textcontroller1.text != "" &&
                              Seletedimage != "") {
                            final adddetailsbloc =
                                BlocProvider.of<AichatbotBloc>(context);
                            adddetailsbloc.add(AichatbotEvent.addaidetails(
                                name: textcontroller1.text,
                                description: textcontroller2.text,
                                image: Seletedimage));
                          } else {
                            snackBarWidget("Provide Details", Icons.warning,
                                Colors.red, Colors.black, Colors.white, 1);
                          }
                        },
                        child: Text(
                          "Submit",
                          style: AppTextStyle.boldTitleStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 3),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
