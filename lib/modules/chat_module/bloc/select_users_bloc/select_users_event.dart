part of 'select_users_bloc.dart';

@freezed
class SelectUsersEvent with _$SelectUsersEvent {
  const factory SelectUsersEvent.fetchUsers() = _FetchUsers;
  const factory SelectUsersEvent.selectUsers({
    required List<UserListItem> userList,
    required UserListItem selectedeUser,
    required List<UserListItem> selectedUsers,
  }) = _SelectUsers;
  const factory SelectUsersEvent.started() = _Started;
}
