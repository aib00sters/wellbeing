part of 'recording_list_bloc.dart';

@freezed
class RecordingListEvent with _$RecordingListEvent {
  const factory RecordingListEvent.fetchList() = _FetchList;
  const factory RecordingListEvent.refresh() = _Refresh;
  const factory RecordingListEvent.started() = _Started;
}
