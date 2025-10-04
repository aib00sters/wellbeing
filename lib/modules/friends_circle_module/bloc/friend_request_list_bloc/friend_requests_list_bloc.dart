import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_services.dart';
import '../../../chat_module/models/user_list_item_model/user_list_item_model.dart';

part 'friend_requests_list_bloc.freezed.dart';
part 'friend_requests_list_event.dart';
part 'friend_requests_list_state.dart';

class FriendRequestsListBloc
    extends Bloc<FriendRequestsListEvent, FriendRequestsListState> {
  FriendRequestsListBloc() : super(const _Initial()) {
    on<FriendRequestsListEvent>((event, emit) async {
      try {
        if (event is _LoadRequestList) {
          final userId = await IsarServices().getUserId();

          final requestSnapShot = await FirebaseFirestore.instance
              .collection('friendRequest')
              .where('fromId', isEqualTo: userId)
              .where('status', isEqualTo: 'requested')
              .get();

          List<dynamic> toid =
              requestSnapShot.docs.map((e) => e.get("toId")).toList();

          final userSnapshot = await FirebaseFirestore.instance
              .collection("users")
              // .where(FieldPath.documentId, whereIn: toid)
              .get();

          final list =
              (userSnapshot.docs.where((element) => toid.contains(element.id)));

          final userList = List<UserListItem>.from(list.map((e) =>
              UserListItem.fromJson(e.data()..addAll({'userId': e.id}))));
          if (userList.isNotEmpty) {
            emit(FriendRequestsListState.success(userListItem: userList));
          } else {
            emit(const FriendRequestsListState.listempty());
          }
        }
      } catch (e) {
        emit(const FriendRequestsListState.error());
      }
    });
  }
}
