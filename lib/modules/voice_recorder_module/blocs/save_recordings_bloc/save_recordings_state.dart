part of 'save_recordings_bloc.dart';

@freezed
class SaveRecordingsState with _$SaveRecordingsState {
  const factory SaveRecordingsState.error({
    required String errorMessage,
  }) = _Error;
  const factory SaveRecordingsState.initial() = _Initial;
  const factory SaveRecordingsState.loading() = _Loading;
  const factory SaveRecordingsState.success({required String path,required String convert,required String id}) = _Success;
}
