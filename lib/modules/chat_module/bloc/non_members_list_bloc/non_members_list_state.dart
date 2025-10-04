part of 'non_members_list_bloc.dart';

@freezed
class NonMembersListState with _$NonMembersListState {
  const factory NonMembersListState.error({required String errorMsg}) = _Error;
  const factory NonMembersListState.initial() = _Initial;
  const factory NonMembersListState.loading() = _Loading;
  const factory NonMembersListState.succes({
    required List<UserListItem> users,
    required List<UserListItem> selectedUsers,
    required List<UserListItem> filteredUserList,
  }) = _Succes;
}
