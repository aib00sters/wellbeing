part of 'selectimage_bloc.dart';

@freezed
class SelectimageEvent with _$SelectimageEvent {
  const factory SelectimageEvent.started() = _Started;
  const factory SelectimageEvent.selectimage({required String option}) = _selectimage;
  const factory SelectimageEvent.uploadimagetofirebase({required String imagepath}) = _uploadimagetofirebase;
  
}