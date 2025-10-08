import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/widgets/showCominsoondialog.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../utilities/size_config.dart';
import '../../chat_module/bloc/chat_list_bloc/chat_list_bloc.dart';
import '../../friends_circle_module/bloc/friend_requests_bloc/friend_requests_bloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        height: 50,
        width: SizeConfig.screenwidth,
        constraints: const BoxConstraints(maxWidth: 390),
        child: Card(
          shape: const StadiumBorder(),
          elevation: 2,
          margin: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppAssets.homeIcon,
                  height: 20,
                  color: AppColors.colorPrimary,
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     showSnackBar(
              //         msg: "This feature will be available soon.",
              //         icons: Icons.warning,
              //         iconcolor: Colors.amber,
              //         time: 1);
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Image.asset(
              //       AppAssets.heartIcon,
              //       height: 20,
              //     ),
              //   ),
              // ),
              InkWell(
                onTap: () {
                  // AppNavigator.pushNamed('/chatList');
                  showComingSoonDialog(context);
                },
                child: BlocBuilder<ChatListBloc, ChatListState>(
                  builder: (context, state) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          isLabelVisible: state.whenOrNull(
                                success: (chatList) {
                                  int count = chatList
                                      .where(
                                          (element) => element.unseenCount > 0)
                                      .toList()
                                      .length;
                                  return count > 0 ? true : false;
                                },
                              ) ??
                              false,
                          label: state.whenOrNull(
                            success: (chatList) {
                              int count = chatList
                                  .where((element) => element.unseenCount > 0)
                                  .toList()
                                  .length;

                              return Text(count.toString());
                            },
                          ),
                          child: const Icon(
                            Icons.chat,
                            color: Color(0xff77838F),
                          ),
                        ));
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  final bloc = BlocProvider.of<FriendRequestsBloc>(context);
                  bloc.add(const FriendRequestsEvent.fetchRequests());
                  AppNavigator.pushNamed("/settings");
                },
                child: BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Badge(
                        isLabelVisible: state.whenOrNull(
                              success: (requests) =>
                                  requests.isNotEmpty ? true : false,
                            ) ??
                            false,
                        label: state.whenOrNull(
                          success: (requests) {
                            return Text(requests.length.toString());
                          },
                        ),
                        child: Image.asset(
                          AppAssets.profileIcon,
                          height: 20,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    final unreadmsgcountBloc = BlocProvider.of<ChatListBloc>(context);
    unreadmsgcountBloc.add(const ChatListEvent.fetchChatList());
    final bloc = BlocProvider.of<FriendRequestsBloc>(context);
    bloc.add(const FriendRequestsEvent.fetchRequests());
    super.initState();
  }
}
