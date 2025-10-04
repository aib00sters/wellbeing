part of 'friend_requests_bloc.dart';

@freezed
class FriendRequestsState with _$FriendRequestsState {
  const factory FriendRequestsState.error({required String errorMsg}) = _Error;
  const factory FriendRequestsState.initial() = _Initial;
  const factory FriendRequestsState.loading() = _Loading;
  const factory FriendRequestsState.success({
    required List<FriendRequestList> requests,
  }) = _Success;
}
