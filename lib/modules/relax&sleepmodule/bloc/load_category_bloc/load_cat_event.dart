part of 'load_cat_bloc.dart';

@freezed
class LoadCatEvent with _$LoadCatEvent {
  const factory LoadCatEvent.started() = _Started;
  const factory LoadCatEvent.getCatEvent() = _getCatEvent;
  
}