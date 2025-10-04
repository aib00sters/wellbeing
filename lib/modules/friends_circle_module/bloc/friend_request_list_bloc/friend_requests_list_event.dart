part of 'friend_requests_list_bloc.dart';

@freezed
class FriendRequestsListEvent with _$FriendRequestsListEvent {
  const factory FriendRequestsListEvent.LoadRequestList() = _LoadRequestList;
  const factory FriendRequestsListEvent.started() = _Started;
}
