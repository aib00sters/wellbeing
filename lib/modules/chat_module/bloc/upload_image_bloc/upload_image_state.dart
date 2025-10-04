part of 'upload_image_bloc.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.error({required String errorMsg}) = _Error;
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.loading() = _Loading;
  const factory UploadImageState.success({
    required String imagePath,
  }) = _Success;
}
