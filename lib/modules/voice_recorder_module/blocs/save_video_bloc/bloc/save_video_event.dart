part of 'save_video_bloc.dart';

@freezed
class SaveVideoEvent with _$SaveVideoEvent {
  const factory SaveVideoEvent.started() = _Started;
}