part of 'getassistant_bloc.dart';

@freezed
class GetassistantEvent with _$GetassistantEvent {
  const factory GetassistantEvent.started() = _Started;
  const factory GetassistantEvent.getavathar() = _getavathar;
  
}