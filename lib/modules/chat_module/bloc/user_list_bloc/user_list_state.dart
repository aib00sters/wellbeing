part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState.error({
    required String errorMsg,
  }) = _Error;
  const factory UserListState.initial() = _Initial;
  const factory UserListState.loading() = _Loading;
  const factory UserListState.success({
    required List<UserListItem> userList,
  }) = _Success;
}
