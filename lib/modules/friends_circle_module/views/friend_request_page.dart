import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/friends_circle_module/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/error_widget.dart';

import '../bloc/add_friend_bloc/add_friend_bloc.dart';

class FriendRequestPage extends StatefulWidget {
  const FriendRequestPage({super.key});

  @override
  State<FriendRequestPage> createState() => _FriendRequestPageState();
}

class _FriendRequestPageState extends State<FriendRequestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appWhite,
        elevation: 0,
        title: Text(
          "Requests",
          style: AppTextStyle.boldTitleStyle(
              fontSize: SizeConfig.textMultiplier * 2.86),
        ),
      ),
      body: ScreenSetter(
        child: BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
            builder: (context, state) {
          return state.when(
              error: (String errorMsg) {
                return const CustomErrorWidget();
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
                              // final chatBloc = BlocProvider.of<ChatBloc>(context);
                              // chatBloc.add(ChatEvent.initChat(
                              //     receiverId: userList[index].userId));
                            },
                            child: Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        errorWidget: (context, url, error) =>
                                            const Icon(
                                          Icons.groups,
                                          size: 50,
                                          color:
                                              Color.fromARGB(255, 35, 35, 35),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      flex: 3,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        userList[index].name,
                                        style: AppTextStyle.boldTitleStyle(
                                            fontSize: 14),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: IconButton(
                                        onPressed: () {
                                          final acceptFrndBloc =
                                              BlocProvider.of<AddFriendBloc>(
                                                  context);
                                          acceptFrndBloc.add(AddFriendEvent
                                              .acceptFriendRequest(
                                            userName: userList[index].userName,
                                            userId: userList[index].userId,
                                            frndRequestId:
                                                userList[index].frndReqstId!,
                                          ));
                                        },
                                        icon: const Icon(Icons.check_circle),
                                        iconSize:
                                            SizeConfig.widthMultiplier * 8,
                                        color: AppColors.colorSecondary,
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: IconButton(
                                        onPressed: () {
                                          final cancelFrndBloc =
                                              BlocProvider.of<AddFriendBloc>(
                                                  context);
                                          cancelFrndBloc.add(AddFriendEvent
                                              .cancelFriendRequest(
                                                  frndRequestId: userList[index]
                                                      .frndReqstId!));
                                        },
                                        icon: const Icon(
                                          Icons.cancel_rounded,
                                        ),
                                        iconSize:
                                            SizeConfig.widthMultiplier * 8,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : const Center(
                        child: Column(
                          children: [Text("No requests found")],
                        ),
                      );
              });
        }),
      ),
    ));
  }
}
