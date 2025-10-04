import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_item_model.freezed.dart';
part 'user_list_item_model.g.dart';

@freezed
class UserListItem with _$UserListItem {
  const factory UserListItem({
    required String fcmToken,
    required String name,
    required String profilePic,
    required String userId,
    
  }) = _UserListItem;

  factory UserListItem.fromJson(Map<String, dynamic> json) =>
      _$UserListItemFromJson(json);
}
