part of 'add_friend_bloc.dart';

@freezed
class AddFriendState with _$AddFriendState {
  const factory AddFriendState.addFriendSuccess() = _AddFriendSuccess;
  const factory AddFriendState.error({
    required String errorMessage,
  }) = _Error;
  const factory AddFriendState.initial() = _Initial;
  const factory AddFriendState.loading() = _Loading;
}
