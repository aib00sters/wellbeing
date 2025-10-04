import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../data/isar_services.dart';
import '../../../../utilities/firebase_services.dart';

part 'send_message_bloc.freezed.dart';
part 'send_message_event.dart';
part 'send_message_state.dart';

class SendMessageBloc extends Bloc<SendMessageEvent, SendMessageState> {
  SendMessageBloc() : super(const _Initial()) {
    on<SendMessageEvent>((event, emit) async {
      try {
        emit(const _Initial());
        final userId = await IsarServices().getUserId();

        final userName = await IsarServices().getName();
        if (event is _SendMessage) {
          emit(const _Loading());

          Map<String, dynamic> messageData = {
            'chatId': event.chatId,
            'senderId': userId,
            'recipientId': event.receiverId,
            'text': event.message,
            'seenBy': [],
            'timeStamp': FieldValue.serverTimestamp(),
            'sentTime': DateFormat.jm().format(DateTime.now()),
            'fileUrl': '',
            'status': 'sent',
            'localPath': '',
            'type': 'text',
          };
          // await FirebaseFirestore.instance
          //     .collection('chats')
          //     .doc(event.chatId)
          //     .set({
          //   "chatId": event.chatId,
          //   "participants": [event.receiverId, userId],
          // });
          await FirebaseFirestore.instance
              .collection('chats')
              .doc(event.chatId)
              .set({'lastMessage': FieldValue.serverTimestamp()},
                  SetOptions(merge: true));
          FirebaseFirestore.instance.collection('messages').add(messageData);
          await FireBaseServices().sendNotification(
              type: 'chat',
              title: event.groupName ?? userName,
              body: event.groupName != null
                  ? '$userName : ${event.message}'
                  : event.message,
              fcmToken: event.chatId);
          emit(const _Success());
        } else if (event is _UploadFile) {
          emit(const _Loading());
          Map<String, dynamic> messageData = {
            'chatId': event.chatId,
            'senderId': userId,
            'recipientId': event.receiverId,
            'text': '',
            'seenBy': [],
            'timeStamp': FieldValue.serverTimestamp(),
            'sentTime': DateFormat.jm().format(DateTime.now()),
            'fileUrl': '',
            'status': 'loading',
            'localPath': event.filePath,
            'type': event.type,
          };

          final msgRef = await FirebaseFirestore.instance
              .collection('messages')
              .add(messageData);
          final storageRef = FirebaseStorage.instance.ref();
          final imageRef = storageRef.child(
              "images/${DateTime.now().toString().replaceAll(':', '').replaceAll(' ', '').replaceAll('-', '').replaceAll('.', '')}.jpg");
          final taskSnapShot = await imageRef.putFile(
            File(event.filePath),
          );
          await FirebaseFirestore.instance
              .collection('messages')
              .doc(msgRef.id)
              .set({
            'status': 'sent',
            'fileUrl': await imageRef.getDownloadURL()
          }, SetOptions(merge: true));
          await FirebaseFirestore.instance
              .collection('chats')
              .doc(event.chatId)
              .set({'lastMessage': FieldValue.serverTimestamp()},
                  SetOptions(merge: true));
          await FireBaseServices().sendNotification(
              type: 'chat',
              title: event.groupName ?? userName,
              body: event.groupName != null ? '$userName : Image' : "Image",
              fcmToken: event.chatId);
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
