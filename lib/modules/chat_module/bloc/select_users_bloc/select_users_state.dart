part of 'select_users_bloc.dart';

@freezed
class SelectUsersState with _$SelectUsersState {
  const factory SelectUsersState.error({required String errorMsg}) = _Error;
  const factory SelectUsersState.initial() = _Initial;
  const factory SelectUsersState.loading() = _Loading;
  const factory SelectUsersState.success({
    required List<UserListItem> userList,
    required List<UserListItem> selectedUsers,
  }) = _Success;
}
