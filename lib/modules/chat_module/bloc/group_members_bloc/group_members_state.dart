part of 'group_members_bloc.dart';

@freezed
class GroupMembersState with _$GroupMembersState {
  const factory GroupMembersState.error({
    required String errorMsg,
  }) = _Error;
  const factory GroupMembersState.initial() = _Initial;
  const factory GroupMembersState.loading() = _Loading;
  const factory GroupMembersState.success({
    required int count,
    required String groupName,
    required String groupId,
    required String imageUrl,
    required List<UserListItem> groupMembers,
    required String groupType,
    required String chatId,
      required String type
  }) = _Success;
}
