import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/screen_sizer.dart';
import '../../../widgets/button_widget.dart';
import '../bloc/select_users_bloc/select_users_bloc.dart';
import '../bloc/upload_image_bloc/upload_image_bloc.dart';

class SelectUsersPage extends StatelessWidget {
  const SelectUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectUsersBloc, SelectUsersState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.appWhite,
            elevation: 0,
            title: Text(
              "Create community",
              style: AppTextStyle.boldTitleStyle(),
            ),
          ),
          floatingActionButton: state.whenOrNull(
            success: (userList, selectedIndexes) => Visibility(
              visible: selectedIndexes.isNotEmpty,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: AppTextStyle.boldTitleStyle(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        ///to remove chache image from previously created community
                        final uploadImageBloc =
                            BlocProvider.of<UploadImageBloc>(context);
                        uploadImageBloc.add(const UploadImageEvent.started());
                        AppNavigator.pushReplacementNamed('/createCommunity');
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
            success: (userList, selectedUsers) {
              return userList.isNotEmpty
                  ? ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 60),
                      itemCount: userList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            final userListBloc =
                                BlocProvider.of<SelectUsersBloc>(context);
                            userListBloc.add(SelectUsersEvent.selectUsers(
                                userList: userList,
                                selectedUsers: selectedUsers,
                                selectedeUser: userList[index]));
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
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Checkbox(
                                    value:
                                        selectedUsers.contains(userList[index]),
                                    onChanged: (value) {
                                      final userListBloc =
                                          BlocProvider.of<SelectUsersBloc>(
                                              context);
                                      userListBloc.add(
                                          SelectUsersEvent.selectUsers(
                                              userList: userList,
                                              selectedUsers: selectedUsers,
                                              selectedeUser: userList[index]));
                                    },
                                    shape: const StadiumBorder(),
                                    activeColor: AppColors.colorSecondary,
                                  )
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
          )),
        ));
      },
    );
  }
}
