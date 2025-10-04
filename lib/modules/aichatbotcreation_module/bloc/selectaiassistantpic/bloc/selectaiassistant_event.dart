part of 'selectaiassistant_bloc.dart';

@freezed
class SelectaiassistantEvent with _$SelectaiassistantEvent {
  const factory SelectaiassistantEvent.started() = _Started;
  const factory SelectaiassistantEvent.selectedaiassistant({required String imagelink}) = _Selectedaiassistant;
  
}