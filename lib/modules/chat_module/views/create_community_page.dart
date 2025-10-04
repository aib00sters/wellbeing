import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/create_community_bloc/create_community_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/select_users_bloc/select_users_bloc.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_functions.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/screen_sizer.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/loading_overlay.dart';
import '../bloc/upload_image_bloc/upload_image_bloc.dart';

class CreateCommunityPage extends StatefulWidget {
  const CreateCommunityPage({super.key});

  @override
  State<CreateCommunityPage> createState() => _CreateCommunityPageState();
}

class _CreateCommunityPageState extends State<CreateCommunityPage> {
  String selectedOption = "";
  int selectedButton = 0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController textController = TextEditingController();

  String? imagePath;
  final LoadingOverlay loadingOverlay = LoadingOverlay();
  set imagePathSetter(String? imagepath) => imagePath = imagepath;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UploadImageBloc, UploadImageState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () {},
              success: (imageUrl) {
                imagePathSetter = imageUrl;
              },
              error: (errorMsg) {
                imagePathSetter = null;
              },
            );
          },
        ),
        BlocListener<CreateCommunityBloc, CreateCommunityState>(
          listener: (context, state) {
            state.when(
              error: (errorMsg) {
                loadingOverlay.hide();
                showSnackBar(
                    msg: "Please try again.",
                    icons: Icons.warning,
                    iconcolor: Colors.red,
                    time: 1);
              },
              initial: () {},
              loading: () {
                loadingOverlay.show(context);
              },
              success: () {
                loadingOverlay.hide();
                showSnackBar(
                    msg: "Community created.",
                    icons: Icons.thumb_up,
                    iconcolor: Colors.green,
                    time: 1);
                Navigator.pop(context);
              },
            );
          },
        ),
      ],
      child: BlocBuilder<SelectUsersBloc, SelectUsersState>(
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: AppColors.appWhite,
              elevation: 0,
              title: Text(
                "Create community",
                style: AppTextStyle.boldTitleStyle(),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: state.whenOrNull(
              success: (userList, selectedUsers) => Visibility(
                visible: selectedUsers.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Create",
                        style: AppTextStyle.boldTitleStyle(),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final createCommunityBloc =
                                BlocProvider.of<CreateCommunityBloc>(context);
                            createCommunityBloc.add(
                                CreateCommunityEvent.createCommunity(
                                    imagePath: imagePath ?? "",
                                    communityName: textController.text,
                                    groupType: selectedOption == ""
                                        ? "Friends"
                                        : selectedOption,
                                    members: state.whenOrNull(
                                          success: (userList, selectedUsers) =>
                                              selectedUsers,
                                        ) ??
                                        []));
                          }
                        },
                        backgroundColor: AppColors.colorSecondary,
                        child: const Icon(
                          Icons.forward,
                          color: AppColors.appBGColor,
                          size: 38,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            body: ScreenSetter(
                child: state.when(
              error: (errorMsg) {
                return const CustomErrorWidget();
              },
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (userList, selectedUsers) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        showUploadOptions(context);
                      },
                      child: Stack(
                        children: [
                          Card(
                            clipBehavior: Clip.hardEdge,
                            margin: EdgeInsets.zero,
                            shape: const StadiumBorder(),
                            child:
                                BlocBuilder<UploadImageBloc, UploadImageState>(
                              builder: (context, state) {
                                return state.when(
                                  error: (errorMsg) {
                                    return Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Icon(
                                        Icons.groups,
                                        size: SizeConfig.sizeMultiplier * 15,
                                        color: const Color.fromARGB(
                                            255, 35, 35, 35),
                                      ),
                                    );
                                  },
                                  initial: () {
                                    return Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Icon(
                                        Icons.groups,
                                        size: SizeConfig.sizeMultiplier * 15,
                                        color: const Color.fromARGB(
                                            255, 35, 35, 35),
                                      ),
                                    );
                                  },
                                  loading: () {
                                    return SizedBox(
                                      height: SizeConfig.sizeMultiplier * 20,
                                      width: SizeConfig.sizeMultiplier * 20,
                                      child: const Center(
                                          child: CircularProgressIndicator()),
                                    );
                                  },
                                  success: (imagePath) {
                                    return Image.file(
                                      File(
                                        imagePath,
                                      ),
                                      fit: BoxFit.cover,
                                      height: SizeConfig.sizeMultiplier * 20,
                                      width: SizeConfig.sizeMultiplier * 20,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child:
                                BlocBuilder<UploadImageBloc, UploadImageState>(
                              builder: (context, state) {
                                return const Card(
                                  color: Colors.grey,
                                  margin: EdgeInsets.zero,
                                  shape: StadiumBorder(),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.edit,
                                      color: Color(0xFFFFFFFF),
                                      size: 15,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 38,
                                child: TextFormField(
                                  controller: textController,
                                  decoration: const InputDecoration(
                                    hintText: 'Enter name..',
                                    isCollapsed: true,
                                  ),
                                  textAlign: TextAlign.start,
                                  validator: (value) =>
                                      (value == null || value.isEmpty)
                                          ? "Please enter a name"
                                          : null,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text("Select Community Type"),
                              const SizedBox(
                                height: 7,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: buildButton(0, 'Family',
                                          const Color(0xFFE4F3FF), 'Family'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: buildButton(1, 'Friends',
                                          const Color(0xFFE7E4FF), 'Friends'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: buildButton(
                                          2,
                                          'Job Circle',
                                          const Color(0xFFFFF2E4),
                                          'Job Circle'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: buildButton(3, 'Spiritual',
                                          const Color(0xFFFFE4F8), 'Spiritual'),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 75),
                        itemCount: selectedUsers.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Card(
                                      margin: EdgeInsets.zero,
                                      clipBehavior: Clip.hardEdge,
                                      shape: const StadiumBorder(),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            selectedUsers[index].profilePic,
                                        height: 50,
                                        width: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      selectedUsers[index].name,
                                      style: AppTextStyle.boldTitleStyle(
                                          fontSize: 14),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          final userListBloc =
                                              BlocProvider.of<SelectUsersBloc>(
                                                  context);
                                          userListBloc.add(
                                              SelectUsersEvent.selectUsers(
                                                  userList: userList,
                                                  selectedUsers: selectedUsers,
                                                  selectedeUser:
                                                      selectedUsers[index]));
                                        },
                                        icon: const Icon(
                                          Icons.cancel_rounded,
                                          color: AppColors.colorSecondary,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            )),
          ));
        },
      ),
    );
  }

  SizedBox buildButton(
      int buttonIndex, String buttonText, Color buttoncolor, String type) {
    return SizedBox(
      width: 90,
      height: 30,
      child: ElevatedButton(
        onPressed: () {
          handleButtonPress(buttonIndex, type);
        },
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(),
          foregroundColor: Colors.black,
          backgroundColor: selectedButton == buttonIndex
              ? const Color.fromARGB(255, 68, 54, 255)
              : buttoncolor,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 10,
              color: selectedButton == buttonIndex
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.black),
        ),
      ),
    );
  }

  void handleButtonPress(buttonIndex, type) {
    setState(() {
      if (selectedButton == buttonIndex) {
        // If the same button is tapped again, deselect it.
        selectedButton = -1;
      } else {
        selectedButton = buttonIndex;
        selectedOption = type;
        print(selectedOption);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    selectedButton = -1; // Initially, no button is selected.
  }
}
