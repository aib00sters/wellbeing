import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wellbeings/modules/chat_module/models/chat_list_item_model/chat_list_item_model.dart';

import '../../../../data/isar_services.dart';

part 'chat_list_bloc.freezed.dart';
part 'chat_list_event.dart';
part 'chat_list_state.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  ChatListBloc() : super(const _Initial()) {
    on<ChatListEvent>((event, emit) async {
      try {
        emit(const _Initial());
        emit(const _Loading());
        if (event is _FetchChatList) {
          emit(const _Loading());
          final userId = await IsarServices().getUserId();
          final fcmToken = await IsarServices().getFcmToken();

          var usersStream = FirebaseFirestore.instance
              .collection('users')
              .where('fcmToken', isNotEqualTo: fcmToken)
              .snapshots();
          var chatStream = FirebaseFirestore.instance
              .collection('chats')
              .where('participants', arrayContains: userId)
              .where('lastMessage', isNotEqualTo: "")
              .orderBy('lastMessage', descending: true)
              .snapshots();
          var messagesStream =
              FirebaseFirestore.instance.collection('messages').snapshots();
          var communityStream = FirebaseFirestore.instance
              .collection('communities')
              .where('members', arrayContains: userId)
              .snapshots();

          final combinedStream = CombineLatestStream.combine4(
              usersStream, chatStream, messagesStream, communityStream,
              (a, b, c, d) {
            return b.docs.map((e2) {
              if (e2.get('type') == 'OneToOne') {
                int unseenCount = c.docs
                    .where((element) =>
                        element.get('chatId') == e2.id &&
                        element.get('recipientId') == userId &&
                        (!element.get('seenBy').contains(userId)))
                    .length;
                List<dynamic> participants = e2.get('participants');
                Iterable<QueryDocumentSnapshot> matchingDocs =
                    a.docs.where((element) {
                  return participants.contains(element.id);
                });
                List<String> names = matchingDocs
                    .map((doc) => doc.get('name') as String)
                    .toList();
                List<String> profilePics = matchingDocs
                    .map((doc) => doc.get('profilePic') as String)
                    .toList();
                List<String> ids = matchingDocs.map((doc) => doc.id).toList();
                List<String> fcm = matchingDocs
                    .map((doc) => doc.get('fcmToken') as String)
                    .toList();
                return {
                  "chatId": e2.id,
                  "userId": ids.isNotEmpty ? ids.first : "",
                  "userName": names.isNotEmpty ? names.first : "",
                  "unseenCount": unseenCount,
                  'fcmToken': fcm.isNotEmpty ? fcm.first : "",
                  "profilePic": profilePics.isNotEmpty ? profilePics.first : "",
                  "lastMessage": e2.get('lastMessage')?.toDate().toString(),
                  "type": "OneToOne",
                  "groupType": ""
                };
              } else if (e2.get('type') == 'Group') {
                int unseenCount = c.docs
                    .where((element) =>
                        element.get('chatId') == e2.id &&
                        element.get('recipientId') == e2.get('groupId') &&
                        (element.get('senderId') != userId) &&
                        (!element.get('seenBy').contains(userId.toString())))
                    .length;
                var communityData = d.docs
                    .where(
                        (element) => element.id.toString() == e2.get('groupId'))
                    .first;
                return {
                  "chatId": e2.id,
                  "userId": communityData.id,
                  "userName": communityData.get('communityName'),
                  "unseenCount": unseenCount,
                  'fcmToken': "",
                  "profilePic": communityData.get('imageUrl'),
                  "lastMessage": e2.get('lastMessage')?.toDate().toString(),
                  "type": "Group",
                  "groupType": communityData.get('groupType')
                };
              }
            });
          });

          await emit.forEach(
            combinedStream,
            onData: (data) {
              List<ChatListItemModel> result =
                  data.map((e) => ChatListItemModel.fromJson(e!)).toList();

              // List<UserListItem> list = result.first['data']
              //     .map((e) => UserListItem.fromJson(e['data']))
              //     .toList();

              return _Success(chatList: result);
            },
            onError: (error, stackTrace) {
              log(error.toString());
              return _Error(errorMsg: error.toString());
            },
          );
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
