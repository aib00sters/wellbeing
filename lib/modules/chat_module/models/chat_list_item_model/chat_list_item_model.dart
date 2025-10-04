import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_list_item_model.freezed.dart';
part 'chat_list_item_model.g.dart';

@freezed
class ChatListItemModel with _$ChatListItemModel {
  const factory ChatListItemModel(
      {required String fcmToken,
      required String userName,
      required String profilePic,
      required int unseenCount,
      required String userId,
      required String chatId,
      required DateTime? lastMessage,
      required String type,
      required String? groupType}) = _ChatListItemModel;

  factory ChatListItemModel.fromJson(Map<String, dynamic> json) =>
      _$ChatListItemModelFromJson(json);
}
