part of 'friend_requests_bloc.dart';

@freezed
class FriendRequestsEvent with _$FriendRequestsEvent {
  const factory FriendRequestsEvent.fetchRequests() = _FetchRequests;
  const factory FriendRequestsEvent.refreshList({required String keyWord}) =
      _RefreshList;
  const factory FriendRequestsEvent.started() = _Started;
}
