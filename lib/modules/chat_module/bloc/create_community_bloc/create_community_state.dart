part of 'create_community_bloc.dart';

@freezed
class CreateCommunityState with _$CreateCommunityState {
  const factory CreateCommunityState.error({
    required String errorMsg,
  }) = _Error;
  const factory CreateCommunityState.initial() = _Initial;
  const factory CreateCommunityState.loading() = _Loading;
  const factory CreateCommunityState.success() = _Success;
}
