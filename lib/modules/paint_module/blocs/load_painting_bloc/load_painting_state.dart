part of 'load_painting_bloc.dart';

@freezed
class LoadPaintingState with _$LoadPaintingState {
  const factory LoadPaintingState.error() = _Error;

  const factory LoadPaintingState.initial() = _Initial;
  const factory LoadPaintingState.projectLoading({required bool navigate}) =
      _ProjectLoading;
  const factory LoadPaintingState.success({
    required String drawingJson,
    required int isarId,
    required String filePath,
    required String extImagePath,
  }) = _Success;
  
}
