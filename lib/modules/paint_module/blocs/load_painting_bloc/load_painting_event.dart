part of 'load_painting_bloc.dart';

@freezed
class LoadPaintingEvent with _$LoadPaintingEvent {
  const factory LoadPaintingEvent.loadProject({
    required String path,
    required int isarId,
    required String extImagePath,
    required bool isDirectPath,
  }) = _LoadProject;
  const factory LoadPaintingEvent.started() = _Started;
}
