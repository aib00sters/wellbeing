part of 'add_friend_bloc.dart';

@freezed
class AddFriendEvent with _$AddFriendEvent {
  const factory AddFriendEvent.acceptFriendRequest(
      {required String frndRequestId,
      required String userId,
      required String userName}) = _AcceptFriendRequest;
  const factory AddFriendEvent.addFriendEvent(
      {required String status, required String toId}) = _AddFriendEvent;
  const factory AddFriendEvent.cancelFriendRequest(
      {required String frndRequestId}) = _CancelFriendRequest;
  const factory AddFriendEvent.started() = _Started;
}
