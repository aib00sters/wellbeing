part of 'avathar_bloc.dart';

@freezed
class AvatharEvent with _$AvatharEvent {
  const factory AvatharEvent.started() = _Started;
  const factory AvatharEvent.callavathar() = _Callavathar;
}
