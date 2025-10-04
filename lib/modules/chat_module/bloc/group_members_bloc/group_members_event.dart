part of 'group_members_bloc.dart';

@freezed
class GroupMembersEvent with _$GroupMembersEvent {
  const factory GroupMembersEvent.fetchGroupData(
      {required int count,
      required String groupId,
      required String groupType,
      required String chatId,
      required String type}) = _FetchGroupData;
  const factory GroupMembersEvent.started() = _Started;
}
