import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../models/friend_request_item_mode/friend_request_item.dart';

part 'friend_requests_bloc.freezed.dart';
part 'friend_requests_event.dart';
part 'friend_requests_state.dart';

class FriendRequestsBloc
    extends Bloc<FriendRequestsEvent, FriendRequestsState> {
  FriendRequestsBloc() : super(const _Initial()) {
    on<FriendRequestsEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _FetchRequests) {
          emit(const _Loading());
          final userId = await IsarServices().getUserId();
          final requestsStream = FirebaseFirestore.instance
              .collection('friendRequest')
              .where('toId', isEqualTo: userId.toString())
              .where('status', isEqualTo: 'requested')
              .snapshots();
          final usersStream = FirebaseFirestore.instance
              .collection('users')
              .where('fcmToken',
                  isNotEqualTo: await IsarServices().getFcmToken())
              .snapshots();

          final combinedStream =
              CombineLatestStream.combine2(requestsStream, usersStream, (a, b) {
            var data = a.docs.map((requestItem) {
              var data = b.docs
                  .where((element) => element.id == requestItem.get('fromId'))
                  .first
                  .data();
              data['userId'] = requestItem.get('fromId');
              data['frndReqstId'] = requestItem.id;
              return data;
            }).toList();
            return data;
          });

          await emit.forEach(
            combinedStream,
            onData: (data) {
              return _Success(
                  requests: data
                      .map((e) => FriendRequestList.fromJson(e)..frndReqstId)
                      .toList());
            },
            onError: (error, stackTrace) {
              return (_Error(errorMsg: error.toString()));
            },
          );
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
