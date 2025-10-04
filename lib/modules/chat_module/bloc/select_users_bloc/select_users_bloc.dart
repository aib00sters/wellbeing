import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_services.dart';
import '../../models/user_list_item_model/user_list_item_model.dart';

part 'select_users_bloc.freezed.dart';
part 'select_users_event.dart';
part 'select_users_state.dart';

class SelectUsersBloc extends Bloc<SelectUsersEvent, SelectUsersState> {
  SelectUsersBloc() : super(const _Initial()) {
    on<SelectUsersEvent>((event, emit) async {
      emit(const _Initial());
      try {
        emit(const _Initial());
        if (event is _FetchUsers) {
          emit(const _Loading());
          final fcmToken = await IsarServices().getFcmToken();
          final userId = await IsarServices().getUserId();
          final userDatasSnapShot = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .get();
          List<dynamic> friendIds = userDatasSnapShot.get('friends');

          final userListDoc = await FirebaseFirestore.instance
              .collection('users')
              .where(FieldPath.documentId, whereIn: friendIds)
              .get();

          final list = (userListDoc.docs
              .where((element) => friendIds.contains(element.id)));
          var userList = List<UserListItem>.from(list.map((e) =>
              UserListItem.fromJson(e.data()..addAll({'userId': e.id}))));
          userList.sort((a, b) {
            return a.name.toLowerCase().compareTo(b.name.toLowerCase());
          });
          emit(_Success(userList: userList, selectedUsers: []));
        } else if (event is _SelectUsers) {
          var selectedList = event.selectedUsers.toList();
          if (selectedList.contains(event.selectedeUser)) {
            selectedList.remove(event.selectedeUser);
          } else {
            selectedList.add(event.selectedeUser);
          }

          emit(_Success(userList: event.userList, selectedUsers: selectedList));
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
