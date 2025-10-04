part of 'paint_gallery_bloc.dart';

@freezed
class PaintGalleryState with _$PaintGalleryState {
  const factory PaintGalleryState.error({required String errorMsg}) = _Error;
  const factory PaintGalleryState.initial() = _Initial;
  const factory PaintGalleryState.loading() = _Loading;
  const factory PaintGalleryState.success({
    required List<PaintDetails> paintingsList,
    required List<int> selectedIndexes,
    required String chatId,
    required String recieverId,
    String? groupName,
  }) = _Success;
}
