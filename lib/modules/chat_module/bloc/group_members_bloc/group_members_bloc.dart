import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../models/user_list_item_model/user_list_item_model.dart';

part 'group_members_bloc.freezed.dart';
part 'group_members_event.dart';
part 'group_members_state.dart';

class GroupMembersBloc extends Bloc<GroupMembersEvent, GroupMembersState> {
  GroupMembersBloc() : super(const _Initial()) {
    on<GroupMembersEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchGroupData) {
          emit(const _Loading());

          final groupStrem = FirebaseFirestore.instance
              .collection('communities')
              .doc(event.groupId)
              .snapshots();

          final userStream = FirebaseFirestore.instance
              .collection('users')
              .orderBy('name')
              .snapshots();

          final combinedStream =
              CombineLatestStream.combine2(groupStrem, userStream, (a, b) {
            List<dynamic> memberIds = a.get('members');
            final members = memberIds
                .map((e) => b.docs
                    .where((element) => element.id == e.toString())
                    .first
                    .data()
                  ..addAll({"userId": e.toString()}))
                .toList();
            return {
              'communityName': a.get('communityName'),
              'image': a.get('imageUrl'),
              'members': List<UserListItem>.from(
                  members.map((e) => UserListItem.fromJson(e)))
            };
          });
          await emit.forEach(
            combinedStream,
            onData: (data) {
              return _Success(
                  count: event.count,
                  groupType: event.groupType,
                  chatId: event.chatId,
                  type: event.type,
                  groupName: data['communityName'],
                  groupId: event.groupId,
                  imageUrl: data['image'],
                  groupMembers: data['members']);
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
