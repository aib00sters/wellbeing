part of 'user_list_bloc.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.fetchUsers() = _FetchUsers;

  const factory UserListEvent.started() = _Started;
}
