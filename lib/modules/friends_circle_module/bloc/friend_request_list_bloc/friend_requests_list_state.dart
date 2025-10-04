part of 'friend_requests_list_bloc.dart';

@freezed
class FriendRequestsListState with _$FriendRequestsListState {
  const factory FriendRequestsListState.error() = _Error;
  const factory FriendRequestsListState.initial() = _Initial;
  const factory FriendRequestsListState.loading() = _Loading;
  const factory FriendRequestsListState.success(
      {required List<UserListItem> userListItem}) = _Success;
  const factory FriendRequestsListState.listempty() = _listempty;
  
}
