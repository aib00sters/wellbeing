part of 'selectimage_bloc.dart';

@freezed
class SelectimageState with _$SelectimageState {
  const factory SelectimageState.initial() = _Initial;
  const factory SelectimageState.selectedimage({required String imagepath}) = _selectedimage;
  const factory SelectimageState.error() = _error;
  const factory SelectimageState.uploadedimage({required String imagepath}) = _uploadedimage;
  
  
  
}
