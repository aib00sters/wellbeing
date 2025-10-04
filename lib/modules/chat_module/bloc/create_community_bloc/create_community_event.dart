part of 'create_community_bloc.dart';

@freezed
class CreateCommunityEvent with _$CreateCommunityEvent {
  const factory CreateCommunityEvent.addMembers(
      {required String groupId,
      required List<UserListItem> members}) = _AddMembers;
  const factory CreateCommunityEvent.createCommunity({
    required String imagePath,
    required String communityName,
    required String groupType,
    required List<UserListItem> members,
  }) = _CreateCommunity;

  const factory CreateCommunityEvent.started() = _Started;
}
