part of 'recording_list_bloc.dart';

@freezed
class RecordingListState with _$RecordingListState {
  const factory RecordingListState.error({required String errorMsg}) = _Error;
  const factory RecordingListState.initial() = _Initial;
  const factory RecordingListState.loading() = _Loading;
  const factory RecordingListState.success({
    required List<RecordingData> recordings,
  }) = _Success;
}
