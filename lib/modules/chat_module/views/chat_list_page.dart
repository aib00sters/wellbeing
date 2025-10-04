import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:wellbeings/blocs/notification_listener_bloc/notification_listener_bloc.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/chat_module/bloc/select_users_bloc/select_users_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/user_list_bloc/user_list_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../data/data_center/data_to_classes.dart';
import '../../../utilities/size_config.dart';
import '../../../widgets/error_widget.dart';
import '../bloc/chat_bloc/chat_bloc.dart';
import '../bloc/chat_list_bloc/chat_list_bloc.dart';
import '../bloc/community_widget_bloc/community_widget_bloc.dart';
import '../bloc/group_members_bloc/group_members_bloc.dart';
import '../bloc/message_list_bloc/message_list_bloc.dart';
import '../models/chat_list_item_model/chat_list_item_model.dart';

List<DataToCommunityWidget> dataToCommunityWidgetLise = [];

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChatListBloc()..add(const ChatListEvent.fetchChatList()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ChatBloc, ChatState>(
            listener: (context, state) async {
              state.whenOrNull(
                success: (chatId, recieverData, chatType, userId, userName) {
                  final msgListBloc = BlocProvider.of<MessageListBloc>(context);
                  msgListBloc.add(MessageListEvent.fetchMessages(
                      chatId: chatId,
                      groupId: chatType == "Group" ? recieverData.userId : ""));
                },
              );
            },
          ),
          BlocListener<MessageListBloc, MessageListState>(
            listener: (context, state) {
              state.whenOrNull(
                initial: () {
                  AppNavigator.pushNamed('/chatPage');
                },
              );
            },
          ),
          BlocListener<ChatListBloc, ChatListState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (chatList) async {
                  if (mounted) {
                    //  await FlutterLocalNotificationsPlugin().cancelAll();
                  }
                },
              );
            },
          ),
          BlocListener<NotificationListenerBloc, NotificationListenerState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (message) async {
                  if (mounted) {
                    //    await FlutterLocalNotificationsPlugin().cancelAll();
                  }
                },
              );
            },
          ),
          BlocListener<GroupMembersBloc, GroupMembersState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (count, groupName, groupId, imageUrl, groupMembers,
                    groupType, chatId, type) {
                  dataToCommunityWidgetLise.add(DataToCommunityWidget(
                      groupName,
                      groupId,
                      imageUrl,
                      groupMembers,
                      groupType,
                      chatId,
                      type));

                  if (count == dataToCommunityWidgetLise.length) {
                    final widgetloadBloc =
                        BlocProvider.of<CommunityWidgetBloc>(context);
                    widgetloadBloc.add(CommunityWidgetEvent.loadWidget(
                        dataToCommunityWidgetLise: dataToCommunityWidgetLise));
                  }
                },
              );
            },
            child: Container(),
          )
        ],
        child: SafeArea(
            child: DefaultTabController(
          length: 2,
          child: Scaffold(
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: SizedBox(
                height: 65,
                width: 65,
                child: FloatingActionButton(
                  backgroundColor: AppColors.appBGColor,
                  onPressed: () {
                    final userListBloc = BlocProvider.of<UserListBloc>(context);
                    userListBloc.add(const UserListEvent.fetchUsers());
                    AppNavigator.pushNamed('/userList');
                  },
                  child: Image.asset(
                    AppAssets.chatIcon,
                    height: 40,
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: AppColors.appBGColor,
              elevation: 0,
              title: Text(
                "Chat List",
                style: AppTextStyle.boldTitleStyle(),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    final selectUsersBloc =
                        BlocProvider.of<SelectUsersBloc>(context);
                    selectUsersBloc.add(const SelectUsersEvent.fetchUsers());
                    AppNavigator.pushNamed('/selectUsers');
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.communityImage,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "New community",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'Communitys'),
                  Tab(text: 'Chats'),
                ],
              ),
            ),
            body: TabBarView(children: [
              ScreenSetter(child: BlocBuilder<ChatListBloc, ChatListState>(
                builder: (context, state) {
                  return state.when(
                    error: (errorMsg) {
                      return const CustomErrorWidget();
                    },
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (chatList) {
                      List<ChatListItemModel> communitylist =
                          chatList.where((e) => e.type == "Group").toList();

                      dataToCommunityWidgetLise = [];

                      for (int i = 0; i < communitylist.length; i++) {
                        final gpMembersBloc =
                            BlocProvider.of<GroupMembersBloc>(context);
                        gpMembersBloc.add(GroupMembersEvent.fetchGroupData(
                            count: communitylist.length,
                            groupId: communitylist[i].userId,
                            groupType: communitylist[i].groupType!,
                            chatId: communitylist[i].chatId,
                            type: communitylist[i].type));
                      }

                      print(communitylist);

                      return BlocBuilder<CommunityWidgetBloc,
                          CommunityWidgetState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () {
                              return const SizedBox();
                            },
                            success: (dataToCommunityWidgetLise) {
                              return GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount:
                                            2, // Number of columns in the grid
                                        mainAxisSpacing:
                                            10.0, // Spacing between rows
                                        crossAxisSpacing:
                                            10.0, // Spacing between columns
                                        childAspectRatio: .9),
                                itemCount: dataToCommunityWidgetLise.length,
                                itemBuilder: (BuildContext context, int index) {
                                  // return const SizedBox();

                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: getColor(
                                            dataToCommunityWidgetLise[index]
                                                .groupType,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          InkWell(
                                            onTap: () {
                                              final chatBloc =
                                                  BlocProvider.of<ChatBloc>(
                                                      context);
                                              chatBloc.add(ChatEvent.initChat(
                                                  receiverId:
                                                      dataToCommunityWidgetLise[
                                                              index]
                                                          .groupId,
                                                  chatId:
                                                      dataToCommunityWidgetLise[
                                                              index]
                                                          .chatId,
                                                  chatType:
                                                      dataToCommunityWidgetLise[
                                                              index]
                                                          .type));
                                            },
                                            child: Card(
                                              elevation: 1,
                                              child: Container(
                                                // color: const Color(0xFFE4F3FF),
                                                color: getColor(
                                                    dataToCommunityWidgetLise[
                                                            index]
                                                        .groupType),
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        45,
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    5,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    dataToCommunityWidgetLise[
                                                            index]
                                                        .groupName,
                                                    style: AppTextStyle
                                                        .boldTitleStyle(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ListView.builder(
                                            physics: const ScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount:
                                                dataToCommunityWidgetLise[index]
                                                    .groupMembers
                                                    .length,
                                            itemBuilder: (BuildContext context,
                                                int index1) {
                                              return Column(
                                                children: [
                                                  SizedBox(height: SizeConfig.screenheight*.01,),
                                                  Row(
                                                    children: [
                                                      CachedNetworkImage(
                                                        imageUrl:
                                                            dataToCommunityWidgetLise[
                                                                    index]
                                                                .groupMembers[
                                                                    index1]
                                                                .profilePic,
                                                        height: 30,
                                                        width: 30,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      SizedBox(
                                                        width: SizeConfig
                                                                .screenwidth *
                                                            .02,
                                                      ),
                                                      Text(
                                                          dataToCommunityWidgetLise[
                                                                  index]
                                                              .groupMembers[
                                                                  index1]
                                                              .name),
                                                    ],
                                                  )
                                                ],
                                              );
                                            },
                                          ),
                                        ]),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              )),
              ScreenSetter(child: BlocBuilder<ChatListBloc, ChatListState>(
                builder: (context, state) {
                  return state.when(
                    error: (errorMsg) {
                      return const CustomErrorWidget();
                    },
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (chatList) {
                      return chatList.isNotEmpty
                          ? ListView.builder(
                              itemCount: chatList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    final chatBloc =
                                        BlocProvider.of<ChatBloc>(context);
                                    chatBloc.add(ChatEvent.initChat(
                                        receiverId: chatList[index].userId,
                                        chatId: chatList[index].chatId,
                                        chatType: chatList[index].type));
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
                                              imageUrl:
                                                  chatList[index].profilePic,
                                              height: 50,
                                              width: 50,
                                              fit: BoxFit.cover,
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(
                                                Icons.groups,
                                                size: 50,
                                                color: Color.fromARGB(
                                                    255, 35, 35, 35),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            chatList[index].userName,
                                            style: AppTextStyle.boldTitleStyle(
                                                fontSize: 14),
                                          ),
                                          const Spacer(),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  chatList[index].lastMessage !=
                                                          null
                                                      ? timeago.format(
                                                          chatList[index]
                                                              .lastMessage!)
                                                      : "",
                                                  style: const TextStyle(
                                                      fontSize: 10),
                                                ),
                                                if (chatList[index]
                                                        .unseenCount !=
                                                    0)
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 7,
                                                      right: 5,
                                                    ),
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: Colors.green,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: Center(
                                                      child: Text(
                                                        chatList[index]
                                                            .unseenCount
                                                            .toString(),
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ),
                                              ])
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                          : const Center(
                              child: Text("No chats yet"),
                            );
                    },
                  );
                },
              )),
            ]),
          ),
        )),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    final rfreshlist = BlocProvider.of<ChatListBloc>(context);
    rfreshlist.add(const ChatListEvent.started());
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    dataToCommunityWidgetLise.clear();
  }

  getColor(String groupType) {
    if (groupType == "Family") {
      return const Color(0xFFE4F3FF);
    } else if (groupType == "Friends") {
      return const Color(0xFFE7E4FF);
    } else if (groupType == "Job Circle") {
      return const Color(0xFFFFF2E4);
    } else if (groupType == "Spiritual") {
      return const Color(0xFFFFE4F8);
    }
  }
}
