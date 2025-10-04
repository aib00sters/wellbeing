part of 'tellusastorybloc_bloc.dart';

@freezed
class TellusastoryblocEvent with _$TellusastoryblocEvent {
  const factory TellusastoryblocEvent.started() = _Started;
  const factory TellusastoryblocEvent.startvideosession() = _Startvideosession;
  const factory TellusastoryblocEvent.startaudiosession() = _Startaudiosession;
  const factory TellusastoryblocEvent.startaiassistant() = _Startaiassistant;
  
  
  
}