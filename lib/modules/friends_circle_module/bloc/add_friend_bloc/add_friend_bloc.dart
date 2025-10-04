import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../../../utilities/firebase_services.dart';

part 'add_friend_bloc.freezed.dart';
part 'add_friend_event.dart';
part 'add_friend_state.dart';

class AddFriendBloc extends Bloc<AddFriendEvent, AddFriendState> {
  AddFriendBloc() : super(const _Initial()) {
    on<AddFriendEvent>((event, emit) async {
      try {
        emit(const AddFriendState.initial());
        if (event is _AddFriendEvent) {
          emit(const _Loading());
          var fromId = await IsarServices().getUserId();
          Map<String, dynamic> requestData = {
            'fromId': fromId,
            'status': event.status,
            'toId': event.toId,
          };
          // ****by nidheesh**

          final userName = await IsarServices().getName();
          await FireBaseServices().sendNotification(
              type: 'request',
              title: "Friend request",
              body: "$userName sent you a friend request.",
              fcmToken: event.toId);

          final reqRef = await FirebaseFirestore.instance
              .collection('friendRequest')
              .add(requestData);

          emit(const AddFriendState.addFriendSuccess());
        } else if (event is _AcceptFriendRequest) {
          emit(const _Loading());
          var mUserId = await IsarServices().getUserId();
          final name = await IsarServices().getName();
          await FireBaseServices().sendNotification(
              type: 'request',
              title: "Friend request",
              body: "$name Accepted your friend request.",
              fcmToken: event.userId);
          await FirebaseFirestore.instance
              .collection('users')
              .doc(mUserId)
              .update({
            'friends': FieldValue.arrayUnion([event.userId])
          });
          await FirebaseFirestore.instance
              .collection('users')
              .doc(event.userId)
              .update({
            'friends': FieldValue.arrayUnion([mUserId])
          });
          final ref = await FirebaseFirestore.instance
              .collection("friendRequest")
              .doc(event.frndRequestId)
              .update({
            'status': "accepted",
          });
          emit(const _AddFriendSuccess());
        } else if (event is _CancelFriendRequest) {
          emit(const _Loading());
          await FirebaseFirestore.instance
              .collection("friendRequest")
              .doc(event.frndRequestId)
              .delete();
          emit(const _AddFriendSuccess());
        }
      } catch (e) {
        emit(_Error(errorMessage: e.toString()));
      }
    });
  }
}
