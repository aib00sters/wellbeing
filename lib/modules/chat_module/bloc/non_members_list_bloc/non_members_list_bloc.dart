import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_services.dart';
import '../../models/user_list_item_model/user_list_item_model.dart';

part 'non_members_list_bloc.freezed.dart';
part 'non_members_list_event.dart';
part 'non_members_list_state.dart';

class NonMembersListBloc
    extends Bloc<NonMembersListEvent, NonMembersListState> {
  NonMembersListBloc() : super(const _Initial()) {
    on<NonMembersListEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _FetchUsers) {
          emit(const _Loading());
          final userId = await IsarServices().getUserId();

          final userListDoc = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .get();

          List<dynamic> friendIds = userListDoc.get('friends');

          if (friendIds.isNotEmpty) {
            final userListDoc = await FirebaseFirestore.instance
                .collection('users')
                //.where(FieldPath.documentId, whereIn: friendIds)
                .get();
            final list = (userListDoc.docs
                .where((element) => friendIds.contains(element.id)));
            var userList = List<UserListItem>.from(list.map((e) =>
                UserListItem.fromJson(e.data()..addAll({'userId': e.id}))));

            for (var element in event.groupMembers) {
              var commonusers = (userList
                  .where((element2) => element.userId == element2.userId));
              if (commonusers.toList().isNotEmpty) {
                userList.remove(commonusers.first);
              }
            }
            emit(_Succes(
              users: userList,
              filteredUserList: userList
                  .where((element) => element.name
                      .toLowerCase()
                      .contains(event.keyword.toLowerCase()))
                  .toList(),
              selectedUsers: [],
            ));
          } else {
            emit(const NonMembersListState.succes(
                users: [], selectedUsers: [], filteredUserList: []));
          }
        } else if (event is _SelectUser) {
          var selectedUsers = event.selectedUsers.toList();
          if (selectedUsers.contains(event.selectedUser)) {
            selectedUsers.remove(event.selectedUser);
          } else {
            selectedUsers.add(event.selectedUser);
          }
          emit(_Succes(
              users: event.users,
              selectedUsers: selectedUsers,
              filteredUserList: event.users));
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
