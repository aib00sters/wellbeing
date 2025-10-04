part of 'save_recordings_bloc.dart';

@freezed
class SaveRecordingsEvent with _$SaveRecordingsEvent {
  const factory SaveRecordingsEvent.delete({
    required int id,
    required String filePath,
  }) = _Delete;
  const factory SaveRecordingsEvent.saveRecording({
    required String path,
    required String name,
    required String type,
    required String connvert,
  }) = _SaveRecording;

  const factory SaveRecordingsEvent.started() = _Started;
}
