import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wellbeings/modules/friends_circle_module/models/friend_request_item_mode/friend_request_item.dart';

import '../../../../data/isar_services.dart';

part 'user_list_bloc.freezed.dart';
part 'user_list_event.dart';
part 'user_list_state.dart';

class FRUserListBloc extends Bloc<UserListEvent, UserListState> {
  FRUserListBloc() : super(const _Initial()) {
    on<UserListEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchFriends) {
          emit(const _Loading());
          final fcmToken = await IsarServices().getFcmToken();
          final userId = await IsarServices().getUserId();
          var sentRequestStream = FirebaseFirestore.instance
              .collection('friendRequest')
              .where('fromId', isEqualTo: userId)
              .snapshots();
          var rcvdRequestStream = FirebaseFirestore.instance
              .collection('friendRequest')
              .where('toId', isEqualTo: userId)
              .snapshots();
          final userListSteam = FirebaseFirestore.instance
              .collection('users')
              .where('fcmToken', isNotEqualTo: fcmToken)
              .orderBy(
                'fcmToken',
              )
              .orderBy(
                'name',
              )
              .get()
              .asStream();

          final combainedStream = CombineLatestStream.combine3(
            sentRequestStream,
            rcvdRequestStream,
            userListSteam,
            (a, b, c) {
              // DEBUG: Print raw document count
              if (kDebugMode) {
                print('=== DEBUG: Raw Firestore Data ===');
                print('Total documents from Firestore: ${c.docs.length}');
                print('All user IDs: ${c.docs.map((e) => e.id).toList()}');
                print(
                    'All user names: ${c.docs.map((e) => e.get('name')).toList()}');
              }

              return c.docs.map(
                (e) {
                  var status;
                  String? friendRequestId;
                  var sendRequestList = a.docs
                      .where((element) => element.data()['toId'] == e.id)
                      .toList();

                  var rcvdreqList = b.docs
                      .where((element) => element.data()['fromId'] == e.id)
                      .toList();

                  if (sendRequestList.isNotEmpty) {
                    status = sendRequestList.first['status'];
                    friendRequestId = sendRequestList.first.id;
                  }

                  if (rcvdreqList.isNotEmpty) {
                    status = rcvdreqList.first['status'] == "requested"
                        ? "recivedRequest"
                        : rcvdreqList.first['status'];
                    friendRequestId = rcvdreqList.first.id;
                  }
                  return {
                    "fcmToken": e.get('fcmToken'),
                    "name": e.get('name'),
                    "profilePic": e.get('profilePic'),
                    "userName": e.get('userName'),
                    "userId": e.id,
                    "status": status ?? "",
                    "frndReqstId": friendRequestId ?? ""
                  };
                },
              );
            },
          );

          await emit.forEach(
            combainedStream,
            onData: (data) {
              List<FriendRequestList> friendRquestList =
                  data.map((e) => FriendRequestList.fromJson(e)).toList();

              // DEBUG: Print processed list
              if (kDebugMode) {
                print('=== DEBUG: Processed Data ===');
                print(
                    'Total users after processing: ${friendRquestList.length}');
                print(
                    'User names: ${friendRquestList.map((e) => e.name).toList()}');
                print(
                    'User IDs: ${friendRquestList.map((e) => e.userId).toList()}');

                // Check for duplicate names
                var nameGroups = <String, List<FriendRequestList>>{};
                for (var user in friendRquestList) {
                  nameGroups[user.name] = [
                    ...(nameGroups[user.name] ?? []),
                    user
                  ];
                }
                nameGroups.forEach((name, users) {
                  if (users.length > 1) {
                    print('Found ${users.length} users with name "$name":');
                    for (var user in users) {
                      print('  - ID: ${user.userId}, Status: ${user.status}');
                    }
                  }
                });
              }

              return _Success(
                  userList: friendRquestList,
                  filteredUserList: friendRquestList
                      .where((element) => element.name
                          .toLowerCase()
                          .contains(event.keyWord.toLowerCase()))
                      .toList());
            },
            onError: (error, stackTrace) {
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
