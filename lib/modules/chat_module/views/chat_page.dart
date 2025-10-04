import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/blocs/notification_listener_bloc/notification_listener_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/chat_module/bloc/chat_bloc/chat_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/chat_list_bloc/chat_list_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/group_members_bloc/group_members_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../bloc/send_message_bloc/send_message_bloc.dart';
import '../widgets/chat_box_widget.dart';
import '../widgets/message_list_widget.dart';

class ChatPage extends StatelessWidget {
  final TextEditingController msgController = TextEditingController();
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // BlocListener<NotificationListenerBloc, NotificationListenerState>(
        //   listener: (context, state) {
        //     state.whenOrNull(
        //       success: (message) async {
        //         // if (mounted) {
        //         //   //    await FlutterLocalNotificationsPlugin().cancelAll();
        //         // }
        //         print("nbsn");
        //       },
        //     );
        //   },
        // ),
        BlocListener<SendMessageBloc, SendMessageState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                // final rfreshlist = BlocProvider.of<ChatListBloc>(context);
                // rfreshlist.add(const ChatListEvent.started());
              },
            );
          },
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.appWhite,
            leadingWidth: 98,
            leading: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                // BackButton(),
                BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                          success: (chatId, recieverData, chatType, userId,
                              userName) {
                            return Card(
                              margin: EdgeInsets.zero,
                              clipBehavior: Clip.hardEdge,
                              shape: const StadiumBorder(),
                              child: CachedNetworkImage(
                                imageUrl: recieverData.profilePic,
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.groups,
                                  size: 40,
                                  color: Color.fromARGB(255, 35, 35, 35),
                                ),
                              ),
                            );
                          },
                        ) ??
                        const Card(
                          margin: EdgeInsets.zero,
                          shape: StadiumBorder(),
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        );
                  },
                ),
              ],
            ),
            title: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return state.whenOrNull(
                      success:
                          (chatId, recieverData, chatType, userId, userName) {
                        return InkWell(
                          onTap: () {
                            if (chatType == "Group") {
                              final gpMembersBloc =
                                  BlocProvider.of<GroupMembersBloc>(context);
                              gpMembersBloc.add(
                                  GroupMembersEvent.fetchGroupData(
                                      count: 0,
                                      groupId: recieverData.userId,
                                      groupType: "",
                                      chatId: "",
                                      type: ""));
                              AppNavigator.pushNamed('/groupMembersPage');
                            } else {
                              null;
                            }
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    recieverData.name,
                                    style: AppTextStyle.boldTitleStyle(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ) ??
                    const SizedBox();
              },
            ),
          ),
          body: ScreenSetter(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFf0ebe3),
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   colors: [
                //     Color(0xFFf0ebe3),
                //     //   AppColors.appWhite,
                //   ],
                // ),
              ),
              child: Column(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: BlocBuilder<ChatBloc, ChatState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              success: (chatId, recieverData, chatType, userId,
                                      userName) =>
                                  MessageListWidget(
                                chatId: chatId,
                                groupId: chatType == "Group"
                                    ? recieverData.userId
                                    : "",
                              ),
                            ) ??
                            const SizedBox();
                      },
                    ),
                  ),
                  BlocBuilder<ChatBloc, ChatState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                              success: (chatId, recieverData, chatType, userId,
                                      userName) =>
                                  ChatBoxWidget(
                                    msgController: msgController,
                                    chattype: chatType,
                                  )) ??
                          const SizedBox();
                    },
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
