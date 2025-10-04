import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request_item.freezed.dart';
part 'friend_request_item.g.dart';

@freezed
class FriendRequestList with _$FriendRequestList {
  const factory FriendRequestList(
      {required String fcmToken,
      required String name,
      required String profilePic,
      required String userId,
      required String userName,
      required String? status,
      required String? frndReqstId}) = _FriendRequestList;

  factory FriendRequestList.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestListFromJson(json);
}
