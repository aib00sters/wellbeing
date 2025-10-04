import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_services.dart';
import '../../../chat_module/models/user_list_item_model/user_list_item_model.dart';

part 'friends_list_bloc.freezed.dart';
part 'friends_list_event.dart';
part 'friends_list_state.dart';

class FriendsListBloc extends Bloc<FriendsListEvent, FriendsListState> {
  FriendsListBloc() : super(const _Initial()) {
    on<FriendsListEvent>((event, emit) async {
      try {
        if (event is _LoadFriendList) {
          final userId = await IsarServices().getUserId();
          final userDatasSnapShot = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .get();

          List<dynamic> friendIds = userDatasSnapShot.get('friends');

          if (friendIds.isNotEmpty) {
            final userListDoc = await FirebaseFirestore.instance
                .collection('users')
                // .where(FieldPath.documentId, whereIn: friendIds)
                .get();

            final list = (userListDoc.docs
                .where((element) => friendIds.contains(element.id)));

            final userList = List<UserListItem>.from(list.map((e) =>
                UserListItem.fromJson(e.data()..addAll({'userId': e.id}))));

            userList.sort((a, b) {
              return a.name.toLowerCase().compareTo(b.name.toLowerCase());
            });
            if (userList.isNotEmpty) {
              emit(FriendsListState.success(userListItem: userList));
            } else {
              emit(const FriendsListState.listemplty());
            }
          }
        }
      } catch (e) {
        emit(const FriendsListState.error());
      }
    });
  }
}
