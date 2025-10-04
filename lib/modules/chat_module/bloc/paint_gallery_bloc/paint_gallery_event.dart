part of 'paint_gallery_bloc.dart';

@freezed
class PaintGalleryEvent with _$PaintGalleryEvent {
  const factory PaintGalleryEvent.fetchPaintings({
    required String chatId,
    required String recieverId,
    String? groupName,
  }) = _FetchPaintings;
  const factory PaintGalleryEvent.selectPainting({
    required List<PaintDetails> paintingsList,
    required List<int> selectedIndexes,
    required int selectedIndex,
    required String chatId,
    required String recieverId,
    String? groupName,
  }) = _SelectPainting;
  const factory PaintGalleryEvent.started() = _Started;
}
