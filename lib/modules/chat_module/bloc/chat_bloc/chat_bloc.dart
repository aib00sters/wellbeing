import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/chat_module/models/user_list_item_model/user_list_item_model.dart';

import '../../../../data/isar_services.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const _Initial()) {
    on<ChatEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _InitChat) {
          emit(const _Loading());

          final userId = await IsarServices().getUserId();
          final username = await IsarServices().getUserName();

          String chatId = "";
          var nots =
              await FlutterLocalNotificationsPlugin().getActiveNotifications();
          for (var element in nots) {
            if (element.channelId!.contains(event.chatId)) {
              await FlutterLocalNotificationsPlugin().cancel(element.id!);
            }
          }
          if (event.chatType == "OneToOne") {
            if (event.chatId.isEmpty) {
              final snapshot = await FirebaseFirestore.instance
                  .collection('chats')
                  .where('participants', arrayContains: event.receiverId)
                  .where('type', isEqualTo: 'OneToOne')
                  .get();
              if (!snapshot.docs.any((element) =>
                  (element.data()["participants"]).contains(userId))) {
                final docRef =
                    await FirebaseFirestore.instance.collection('chats').add({
                  'participants': [
                    event.receiverId,
                    userId,
                  ],
                  'type': 'OneToOne',
                  'lastMessage': '',
                  'groupId': null
                });
                chatId = docRef.id;
              } else {
                chatId = snapshot.docs
                    .where((element) =>
                        element.data()['participants'].contains(userId))
                    .first
                    .id;
              }
            } else {
              chatId = event.chatId;
            }

            final receiverDoc = await FirebaseFirestore.instance
                .collection('users')
                .doc(event.receiverId)
                .get();
            final recieverData = UserListItem.fromJson(
                receiverDoc.data()!..addAll({"userId": event.receiverId}));
            emit(_Success(
                chatId: chatId,
                recieverData: recieverData,
                chatType: event.chatType,
                userId: userId,
                username: username));
          } else {
            final groupData = await FirebaseFirestore.instance
                .collection('communities')
                .doc(event.receiverId)
                .get();
            UserListItem userListItem = UserListItem(
                fcmToken: "",
                name: groupData.get('communityName'),
                profilePic: groupData.get('imageUrl'),
                userId: event.receiverId);
            emit(_Success(
                chatId: event.chatId,
                recieverData: userListItem,
                chatType: event.chatType,
                userId: userId,
                username: username));
          }
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
