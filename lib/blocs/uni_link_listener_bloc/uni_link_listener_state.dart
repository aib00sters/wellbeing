part of 'uni_link_listener_bloc.dart';

@freezed
class UniLinkListenerState with _$UniLinkListenerState {
  const factory UniLinkListenerState.error({
    required String errorMsg,
  }) = _Error;
  const factory UniLinkListenerState.initial() = _Initial;
  const factory UniLinkListenerState.loading() = _Loading;
  const factory UniLinkListenerState.success({required String filePath}) =
      _Success;
}
