part of 'friends_list_bloc.dart';

@freezed
class FriendsListEvent with _$FriendsListEvent {
  const factory FriendsListEvent.loadFriendList() = _LoadFriendList;
  const factory FriendsListEvent.started() = _Started;
}
