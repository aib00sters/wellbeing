import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../models/message_model/message_model.dart';

part 'message_list_bloc.freezed.dart';
part 'message_list_event.dart';
part 'message_list_state.dart';

class MessageListBloc extends Bloc<MessageListEvent, MessageListState> {
  MessageListBloc() : super(const _Initial()) {
    on<MessageListEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchMessages) {
          emit(const _Loading());
          final String userId = await IsarServices().getUserId();
          final msgStream = FirebaseFirestore.instance
              .collection('messages')
              .orderBy('timeStamp')
              .where('chatId', isEqualTo: event.chatId)
              .snapshots();
          var usersStream =
              FirebaseFirestore.instance.collection('users').snapshots();
          final combinedStream =
              CombineLatestStream.combine2(msgStream, usersStream, (a, b) {
            List<MessageModel> messageList = a.docs.map(
              (e) {
                var msgJson = e.data();
                var user = b.docs
                    .where((element) => element.id == msgJson['senderId']);
                msgJson['senderName'] = user.first.get('name');
                var msgModel = MessageModel.fromJson(msgJson);

                return msgModel;
              },
            ).toList();
            return messageList;
          });
          await emit.forEach(
            combinedStream,
            onData: (data) {
              return _Success(
                  messages: data, userId: userId, groupId: event.groupId);
            },
            onError: (error, stackTrace) {
              log(error.toString());
              return _Error(errorMsg: error.toString());
            },
          );
        }
      } catch (e) {
        log(e.toString());
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
