import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/create_community_bloc/create_community_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/non_members_list_bloc/non_members_list_bloc.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';
import '../../../widgets/error_widget.dart';
import '../models/user_list_item_model/user_list_item_model.dart';

class UsersDialogWidget extends StatelessWidget {
  final String groupId;
  List<UserListItem> groupMembers;
  UsersDialogWidget(
      {super.key, required this.groupId, required this.groupMembers});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return BlocBuilder<NonMembersListBloc, NonMembersListState>(
      builder: (context, state) {
        return Dialog(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
                // maxHeight: SizeConfig.heightMultiplier * 60,
                ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: SizeConfig.widthMultiplier * 90,
                        height: SizeConfig.sizeMultiplier * 20,
                        child: BlocBuilder<NonMembersListBloc,
                            NonMembersListState>(
                          builder: (context, state) {
                            return TextField(
                                cursorHeight: 20,
                                controller: searchController,
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10.0),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        FocusScope.of(context)
                                            .requestFocus(FocusNode());
                                        final bloc =
                                            BlocProvider.of<NonMembersListBloc>(
                                                context);
                                        bloc.add(NonMembersListEvent.fetchUsers(
                                            groupMembers: groupMembers,
                                            keyword: searchController.text
                                                .toString()
                                                .trim()));
                                      },
                                      child: const Card(
                                        color: AppColors.colorSecondary,
                                        shape: StadiumBorder(
                                          side: BorderSide(
                                            color: AppColors.appWhite,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.search,
                                          size: 20,
                                          color: AppColors.appWhite,
                                        ),
                                      ),
                                    ),
                                    fillColor: AppColors.searFieldColor,
                                    filled: true,
                                    hintText: "Search...",
                                    hintStyle: const TextStyle(
                                        color: AppColors.searFieldTxtColor,
                                        fontSize: 15),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(26),
                                        ))));
                          },
                        )),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 50,
                    child: state.when(
                      error: (errorMsg) {
                        return const CustomErrorWidget();
                      },
                      initial: () => const Center(
                        child: SizedBox(),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      succes: (users, selectedUsers, filteredUsers) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: filteredUsers.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: filteredUsers.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            final bloc = BlocProvider.of<
                                                NonMembersListBloc>(context);
                                            bloc.add(
                                                NonMembersListEvent.selectUser(
                                                    users: filteredUsers,
                                                    selectedUsers:
                                                        selectedUsers,
                                                    selectedUser:
                                                        filteredUsers[index]));
                                          },
                                          child: Card(
                                            elevation: 1,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Card(
                                                    margin: EdgeInsets.zero,
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        const StadiumBorder(),
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                          filteredUsers[index]
                                                              .profilePic,
                                                      height: 50,
                                                      width: 50,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    filteredUsers[index].name,
                                                    style: AppTextStyle
                                                        .boldTitleStyle(
                                                            fontSize: 14),
                                                  ),
                                                  const Spacer(
                                                    flex: 1,
                                                  ),
                                                  Checkbox(
                                                    value: selectedUsers
                                                        .contains(filteredUsers[
                                                            index]),
                                                    onChanged: (value) {
                                                      final bloc = BlocProvider
                                                          .of<NonMembersListBloc>(
                                                              context);
                                                      bloc.add(NonMembersListEvent
                                                          .selectUser(
                                                              users:
                                                                  filteredUsers,
                                                              selectedUsers:
                                                                  selectedUsers,
                                                              selectedUser:
                                                                  filteredUsers[
                                                                      index]));
                                                    },
                                                    shape:
                                                        const StadiumBorder(),
                                                    activeColor: AppColors
                                                        .colorSecondary,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  : const Center(
                                      child: Text("No matches found!")),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                state.whenOrNull(
                                      succes: (users, selectedUsers,
                                              filteredList) =>
                                          ElevatedButton(
                                              onPressed: () async {
                                                if (selectedUsers.isEmpty) {
                                                  showSnackBar(
                                                      msg:
                                                          "Please select atleast one user",
                                                      icons: Icons.warning,
                                                      iconcolor: Colors.red,
                                                      time: 2);
                                                } else {
                                                  final bloc = BlocProvider.of<
                                                          CreateCommunityBloc>(
                                                      context);
                                                  bloc.add(CreateCommunityEvent
                                                      .addMembers(
                                                          groupId: groupId,
                                                          members:
                                                              selectedUsers));
                                                  Navigator.pop(context);
                                                }
                                              },
                                              child: const Text(
                                                "Add",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              )),
                                    ) ??
                                    const SizedBox(),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
