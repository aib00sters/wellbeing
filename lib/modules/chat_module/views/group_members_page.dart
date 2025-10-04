import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/chat_module/bloc/group_members_bloc/group_members_bloc.dart';
import 'package:wellbeings/modules/chat_module/widgets/users_dialog_widget.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../utilities/app_styles.dart';
import '../bloc/non_members_list_bloc/non_members_list_bloc.dart';

class GroupMembersPage extends StatelessWidget {
  const GroupMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupMembersBloc, GroupMembersState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: AppColors.appBGColor,
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: true,
            backgroundColor: AppColors.appBGColor,
          ),
          body: ScreenSetter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                      margin: EdgeInsets.zero,
                      clipBehavior: Clip.hardEdge,
                      shape: const StadiumBorder(),
                      child: state.when(
                        error: (errorMsg) => const SizedBox(
                          height: 130,
                          width: 130,
                        ),
                        initial: () => const SizedBox(
                          height: 130,
                          width: 130,
                        ),
                        loading: () => const SizedBox(
                          height: 130,
                          width: 130,
                        ),
                        success: (count, groupName, groupId, imageUrl,
                                groupMembers,groupType,chatId,type) =>
                            CachedNetworkImage(
                          imageUrl: imageUrl,
                          height: 130,
                          width: 130,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Icon(
                            Icons.groups,
                            size: 130,
                            color: Color.fromARGB(255, 35, 35, 35),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    state.whenOrNull(
                          success: (count, groupName, groupId, imageUrl,
                                  groupMembers,groupType,chatId,type) =>
                              groupName,
                        ) ??
                        "",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Members",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.colorPrimary,
                          ),
                        ),
                        OutlinedButton(
                            onPressed: () {
                              state.whenOrNull(
                                success: (count, groupName, groupId, imageUrl,
                                    groupMembers,groupType,chatId,type) {
                                  final bloc =
                                      BlocProvider.of<NonMembersListBloc>(
                                          context);
                                  bloc.add(const NonMembersListEvent.started());
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return UsersDialogWidget(
                                        groupId: groupId,
                                        groupMembers: groupMembers,
                                      );
                                    },
                                  );
                                },
                              );
                            },
                            style: OutlinedButton.styleFrom(
                                elevation: 0,
                                side: const BorderSide(
                                    color: AppColors.colorPrimary)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.person_add,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  state.when(
                    error: (errorMsg) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    initial: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    success:
                        (count, groupName, groupId, imageUrl, groupMembers,groupType,chatid,type) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: groupMembers.length,
                          itemBuilder: (context, index) {
                            return Card(
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
                                            groupMembers[index].profilePic,
                                        height: 50,
                                        width: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      groupMembers[index].name,
                                      style: AppTextStyle.boldTitleStyle(
                                          fontSize: 14),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}
