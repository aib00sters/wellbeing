import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../models/user_list_item_model/user_list_item_model.dart';

part 'user_list_bloc.freezed.dart';
part 'user_list_event.dart';
part 'user_list_state.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc() : super(const _Initial()) {
    on<UserListEvent>((event, emit) async {
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
            emit(_Success(
              userList: userList,
            ));
          } else {
            emit(const _Success(
              userList: [],
            ));
          }

          // await emit.forEach(
          //   userListSteam,
          //   onData: (data) {
          //     final userList = List<UserListItem>.from(data.docs.map((e) =>
          //         UserListItem.fromJson(e.data()..addAll({'userId': e.id}))));
          //     return _Success(userList: userList);
          //   },
          //   onError: (error, stackTrace) {
          //     return _Error(errorMsg: error.toString());
          //   },
          // );
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
