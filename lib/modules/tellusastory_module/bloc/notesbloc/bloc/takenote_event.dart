part of 'takenote_bloc.dart';

@freezed
class TakenoteEvent with _$TakenoteEvent {
  const factory TakenoteEvent.started() = _Started;
  const factory TakenoteEvent.startspeech() = _Startspeech;
  const factory TakenoteEvent.stopspeech() = _Stopspeech;
  
  
  
  
}