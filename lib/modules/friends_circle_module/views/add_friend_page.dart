import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/friends_circle_module/models/friend_request_item_mode/friend_request_item.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/error_widget.dart';
import '../bloc/add_friend_bloc/add_friend_bloc.dart';
import '../bloc/friend_request_list_bloc/friend_requests_list_bloc.dart';
import '../bloc/friends_list_bloc/friends_list_bloc.dart';
import '../bloc/user_list_bloc/user_list_bloc.dart';
import '../widgets/friends_list_widget.dart';
import '../widgets/friends_requests_dialod.dart';
import '../widgets/gradient_button.dart';

class AddFriendPage extends StatefulWidget {
  const AddFriendPage({super.key});

  @override
  State<AddFriendPage> createState() => _AddFriendPageState();
}

class _AddFriendPageState extends State<AddFriendPage> {
  bool status = true;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<FriendsListBloc, FriendsListState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(listemplty: () {
              snackBarWidget("List empty", Icons.warning, Colors.orange,
                  Colors.black, Colors.white, 2);
            }, success: (list) {
              showDialog(
                context: context,
                builder: (context) {
                  return const FriendListWidget();
                },
              );
            });
          },
        ),
        BlocListener<FriendRequestsListBloc, FriendRequestsListState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(
              listempty: () {
                snackBarWidget("List empty", Icons.warning, Colors.orange,
                    Colors.black, Colors.white, 2);
              },
              success: (userListItem) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const FriendRequestListWidget();
                  },
                );
              },
            );
          },
        ),
      ],
      child: BlocProvider<FRUserListBloc>(
        create: (context) => FRUserListBloc(),
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: AppColors.appWhite,
              elevation: 0,
              title: Text(
                "Add family members",
                style: AppTextStyle.boldTitleStyle(
                    fontSize: SizeConfig.textMultiplier * 2.86),
              ),
            ),
            body: ScreenSetter(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: SizedBox(
                    width: SizeConfig.widthMultiplier * 90,
                    height: SizeConfig.sizeMultiplier * 20,
                    child: BlocBuilder<FRUserListBloc, UserListState>(
                      builder: (context, state) {
                        return TextField(
                            cursorHeight: 20,
                            controller: _searchController,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10.0),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    final bloc =
                                        BlocProvider.of<FRUserListBloc>(
                                            context);
                                    bloc.add(UserListEvent.fetchUsers(
                                      keyWord: _searchController.text
                                          .toString()
                                          .trim(),
                                    ));
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
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(26),
                                    ))));
                      },
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    final requestListBloc =
                        BlocProvider.of<FriendRequestsListBloc>(context);
                    requestListBloc
                        .add(const FriendRequestsListEvent.LoadRequestList());
                  },
                  child: BlocBuilder<FriendRequestsListBloc,
                      FriendRequestsListState>(
                    builder: (context, state) {
                      return Card(
                        child: SizedBox(
                          width: SizeConfig.widthMultiplier * 90,
                          height: SizeConfig.sizeMultiplier * 13,
                          child: Center(
                              child: Text(
                            'Requested ( ${state.whenOrNull(
                                  success: (userListItem) =>
                                      userListItem.length,
                                ) ?? 0} )',
                            style: AppTextStyle.boldTitleStyle(fontSize: 15),
                          )),
                        ),
                      );
                    },
                  ),
                ),
                InkWell(
                  onTap: () {
                    final frindListBloc =
                        BlocProvider.of<FriendsListBloc>(context);
                    frindListBloc.add(const FriendsListEvent.loadFriendList());
                  },
                  child: BlocBuilder<FriendsListBloc, FriendsListState>(
                    builder: (context, state) {
                      return Card(
                        child: SizedBox(
                          width: SizeConfig.widthMultiplier * 90,
                          height: SizeConfig.sizeMultiplier * 13,
                          child: Center(
                              child: Text(
                            'Friends ( ${state.whenOrNull(
                                  success: (userListItem) =>
                                      userListItem.length,
                                ) ?? 0} )',
                            style: AppTextStyle.boldTitleStyle(fontSize: 15),
                          )),
                        ),
                      );
                    },
                  ),
                ),
                Flexible(
                  flex: 6,
                  fit: FlexFit.tight,
                  child: BlocBuilder<FRUserListBloc, UserListState>(
                      builder: (context, state) {
                    return state.when(
                        error: (String errorMsg) {
                          return const CustomErrorWidget();
                        },
                        initial: () => const Center(child: SizedBox()),
                        loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                        success: (List<FriendRequestList> userList,
                            List<FriendRequestList> filteredUserList) {
                          return SizedBox(
                            height: SizeConfig.sizeMultiplier * 70,
                            child: filteredUserList.isNotEmpty
                                ? ListView.builder(
                                    padding: const EdgeInsets.all(10),
                                    itemCount: filteredUserList.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          // final chatBloc =
                                          //     BlocProvider.of<ChatBloc>(context);
                                          // chatBloc.add(ChatEvent.initChat(
                                          //     receiverId: userList[index].userId));
                                        },
                                        child: Card(
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Card(
                                                  margin: EdgeInsets.zero,
                                                  clipBehavior: Clip.hardEdge,
                                                  shape: const StadiumBorder(),
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        filteredUserList[index]
                                                            .profilePic,
                                                    height: 50,
                                                    width: 50,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Flexible(
                                                  flex: 1,
                                                  fit: FlexFit.tight,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        filteredUserList[index]
                                                            .name,
                                                        style: AppTextStyle
                                                            .boldTitleStyle(
                                                                fontSize: 14),
                                                      ),
                                                      Text(
                                                        filteredUserList[index]
                                                            .userName,
                                                        style: AppTextStyle
                                                            .boldTitleStyle(
                                                                fontSize: 10),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                getButton(
                                                    userName:
                                                        filteredUserList[index]
                                                            .userName,
                                                    userid:
                                                        filteredUserList[index]
                                                            .userId,
                                                    status:
                                                        filteredUserList[index]
                                                            .status,
                                                    friendRequestid:
                                                        filteredUserList[index]
                                                            .frndReqstId),

                                                //             fit: FlexFit.tight,
                                                //             flex: 1,
                                                //             child: Row(
                                                //               children: [
                                                //                 Flexible(
                                                //                   flex: 1,
                                                //                   fit: FlexFit.tight,
                                                //                   child: IconButton(
                                                //                     onPressed: () {
                                                //                       final acceptFrndBloc =
                                                //                           BlocProvider.of<
                                                //                                   AddFriendBloc>(
                                                //                               context);
                                                //                       acceptFrndBloc.add(AddFriendEvent
                                                //                           .acceptFriendRequest(
                                                //                               frndRequestId:
                                                //                                   filteredUserList[index]
                                                //                                       .frndReqstId!));
                                                //                     },
                                                //                     icon: const Icon(Icons
                                                //                         .check_circle),
                                                //                     iconSize: SizeConfig
                                                //                             .widthMultiplier *
                                                //                         8,
                                                //                     color: AppColors
                                                //                         .colorSecondary,
                                                //                   ),
                                                //                 ),
                                                //                 Flexible(
                                                //                   flex: 1,
                                                //                   fit: FlexFit.tight,
                                                //                   child: IconButton(
                                                //                     onPressed: () {
                                                //                       final cancelFrndBloc =
                                                //                           BlocProvider.of<
                                                //                                   AddFriendBloc>(
                                                //                               context);
                                                //                       cancelFrndBloc.add(AddFriendEvent
                                                //                           .cancelFriendRequest(
                                                //                               frndRequestId:
                                                //                                   filteredUserList[index]
                                                //                                       .frndReqstId!));
                                                //                     },
                                                //                     icon: const Icon(
                                                //                       Icons
                                                //                           .cancel_rounded,
                                                //                     ),
                                                //                     iconSize: SizeConfig
                                                //                             .widthMultiplier *
                                                //                         8,
                                                //                     color: Colors.red,
                                                //                   ),
                                                //                 ),
                                                //               ],
                                                //             ),
                                                //           ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : const Center(
                                    child: Text("No matches found!")),
                          );
                        });
                  }),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }

  getButton({
    required String? userid,
    required String? status,
    required String? userName,
    required String? friendRequestid,
  }) {
    switch (status) {
      case "requested":
        return Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: GradientButtonRequested(
            text: 'Requested',
            icon: Icons.group_add,
            onPressed: () {
              // Button press action
            },
          ),
        );

      case "accepted":
        return Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: GradientButtonRequested(
            text: 'Friends',
            icon: Icons.group_add,
            onPressed: () {
              // Button press action
            },
          ),
        );

      case "recivedRequest":
        return Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: IconButton(
                  onPressed: () {
                    final cancelFrndBloc =
                        BlocProvider.of<AddFriendBloc>(context);
                    cancelFrndBloc.add(AddFriendEvent.cancelFriendRequest(
                        frndRequestId: friendRequestid!));
                  },
                  icon: const Icon(
                    Icons.cancel_rounded,
                  ),
                  iconSize: SizeConfig.widthMultiplier * 8,
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: IconButton(
                  onPressed: () {
                    final acceptFrndBloc =
                        BlocProvider.of<AddFriendBloc>(context);
                    acceptFrndBloc.add(AddFriendEvent.acceptFriendRequest(
                      userName: userName!,
                      userId: userid!,
                      frndRequestId: friendRequestid!,
                    ));
                  },
                  icon: const Icon(Icons.check_circle),
                  iconSize: SizeConfig.widthMultiplier * 8,
                  color: AppColors.colorSecondary,
                ),
              ),
            ],
          ),
        );
      // do something else
      default:
        return Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: GradientButtonAddFriend(
            text: 'Add',
            icon: Icons.group_add,
            gradientColors: const [
              AppColors.colorPrimary,
              AppColors.colorSecondary,
            ],
            onPressed: () {
              final addFriendBloc = BlocProvider.of<AddFriendBloc>(context);
              addFriendBloc.add(AddFriendEvent.addFriendEvent(
                  toId: userid!, status: "requested"));
            },
          ),
        );
    }
  }

  @override
  void initState() {
    final requestListBloc = BlocProvider.of<FriendRequestsListBloc>(context);
    requestListBloc.add(const FriendRequestsListEvent
        .LoadRequestList()); // TODO: implement initState
    final frindListBloc = BlocProvider.of<FriendsListBloc>(context);
    frindListBloc.add(const FriendsListEvent.loadFriendList());
    super.initState();
  }
}
