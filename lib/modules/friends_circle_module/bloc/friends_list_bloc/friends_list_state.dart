part of 'friends_list_bloc.dart';

@freezed
class FriendsListState with _$FriendsListState {
  const factory FriendsListState.error() = _Error;
  const factory FriendsListState.initial() = _Initial;
  const factory FriendsListState.loading() = _Loading;
  const factory FriendsListState.success(
      {required List<UserListItem> userListItem}) = _Success;
  const factory FriendsListState.listemplty() = _Listemplty;
  
}
