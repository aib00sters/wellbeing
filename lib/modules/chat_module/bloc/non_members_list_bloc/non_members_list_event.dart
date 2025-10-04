part of 'non_members_list_bloc.dart';

@freezed
class NonMembersListEvent with _$NonMembersListEvent {
  const factory NonMembersListEvent.fetchUsers({
    required List<UserListItem> groupMembers,
    required String keyword
  }) = _FetchUsers;
  const factory NonMembersListEvent.searcUsers(
      {required String keyWord,
      required List<UserListItem> userList,
      required List<UserListItem> filteredUserList}) = _SearcUsers;

  const factory NonMembersListEvent.selectUser({
    required List<UserListItem> users,
    required List<UserListItem> selectedUsers,
    required UserListItem selectedUser,
  }) = _SelectUser;
  const factory NonMembersListEvent.started() = _Started;
}
