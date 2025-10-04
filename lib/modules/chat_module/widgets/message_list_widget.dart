import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:wellbeings/modules/chat_module/bloc/message_list_bloc/message_list_bloc.dart';
import 'package:wellbeings/modules/chat_module/widgets/message_item_widget.dart';
import 'package:wellbeings/widgets/error_widget.dart';

import '../../../blocs/notification_listener_bloc/notification_listener_bloc.dart';

class MessageListWidget extends StatelessWidget {
  final String chatId;
  final String groupId;
  final ScrollController scrollController = ScrollController();

  MessageListWidget({super.key, required this.chatId, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MessageListBloc>(
      create: (context) => MessageListBloc()
        ..add(MessageListEvent.fetchMessages(chatId: chatId, groupId: groupId)),
      child: BlocListener<NotificationListenerBloc, NotificationListenerState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (message) async {
              if (message.from!.contains(chatId)) {
                FlutterLocalNotificationsPlugin()
                    .cancel(message.notification.hashCode);
              }
            },
          );
        },
      child: BlocConsumer<MessageListBloc, MessageListState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (messages, userId, groupId) {
              if (messages.isNotEmpty) {
                changeStatus(
                    chatId: messages.first.chatId,
                    userId: userId,
                    groupId: groupId);
              }
            },
          );
        },
        builder: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (scrollController.hasClients) {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            }
          });
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
            success: (messages, userId, groupId) {
              return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return MessageItemWidget(
                      context: context,
                      type: messages[index].type,
                      status: messages[index].status,
                      seen: messages[index]
                          .seenBy
                          .contains(messages[index].recipientId),
                      isSentMessage: messages[index].senderId == userId,
                      sentTime: messages[index].sentTime,
                      text: messages[index].text,
                      fileUrl: messages[index].fileUrl,
                      localPath: messages[index].localPath,
                      senderName: (messages[index].senderId != userId &&
                              groupId.isNotEmpty)
                          ? messages[index].senderName
                          : null,
                    );
                  });
            },
          );
        },
      ),
    ),
    );
  }

  Future<void> changeStatus(
      {required String chatId,
      required String userId,
      required String groupId}) async {
    var snapshot = groupId.isEmpty
        ? await FirebaseFirestore.instance
            .collection("messages")
            .where('recipientId', isEqualTo: userId)
            .where('chatId', isEqualTo: chatId)
            .get()
        : await FirebaseFirestore.instance
            .collection("messages")
            .where('recipientId', isEqualTo: groupId)
            .where('senderId', isNotEqualTo: userId)
            .where('chatId', isEqualTo: chatId)
            .get();
    for (var element in snapshot.docs) {
      var seenList = element.get('seenBy') as List<dynamic>;
      if (!seenList.contains(userId)) {
        seenList.add(userId);
      }
      await FirebaseFirestore.instance
          .collection("messages")
          .doc(element.id)
          .update({"seenBy": seenList});
    }
  }
}
