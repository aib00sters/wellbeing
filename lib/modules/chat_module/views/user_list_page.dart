import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/chat_bloc/chat_bloc.dart';
import 'package:wellbeings/widgets/button_widget.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/screen_sizer.dart';
import '../bloc/user_list_bloc/user_list_bloc.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appWhite,
        elevation: 0,
        title: Text(
          "Members",
          style: AppTextStyle.boldTitleStyle(),
        ),
        actions: [
          InkWell(
            onTap: () {
              AppNavigator.pushReplacementNamed('/addFriends');
            },
            child: const Row(
              children: [
                Icon(
                  Icons.person_add,
                  size: 25,
                  color: AppColors.colorPrimary,
                ),
                // Image.asset(
                //   AppAssets.communityImage,
                //   height: 30,
                // ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Add members",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ScreenSetter(child: BlocBuilder<UserListBloc, UserListState>(
        builder: (context, state) {
          return state.when(
            error: (errorMsg) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "No family members found.",
                      style: AppTextStyle.titleTextStyle(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GradientButton(
                      width: 150,
                      onTap: () {
                        AppNavigator.pushNamed('/addFriends');
                      },
                      text: "Add members",
                    )
                  ],
                ),
              );
            },
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (userList) {
              return userList.isNotEmpty
                  ? ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: userList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            final chatBloc = BlocProvider.of<ChatBloc>(context);
                            chatBloc.add(ChatEvent.initChat(
                                receiverId: userList[index].userId,
                                chatId: "",
                                chatType: "OneToOne"));
                          },
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
                                      imageUrl: userList[index].profilePic,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    userList[index].name,
                                    style: AppTextStyle.boldTitleStyle(
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "No family members found.",
                            style: AppTextStyle.titleTextStyle(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GradientButton(
                            width: 150,
                            onTap: () {
                              AppNavigator.pushNamed('/addFriends');
                            },
                            text: "Add members",
                          )
                        ],
                      ),
                    );
            },
          );
        },
      )),
    ));
  }
}
