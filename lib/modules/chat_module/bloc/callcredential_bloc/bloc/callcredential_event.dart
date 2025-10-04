part of 'callcredential_bloc.dart';

@freezed
class CallcredentialEvent with _$CallcredentialEvent {
  const factory CallcredentialEvent.started() = _Started;
  const factory CallcredentialEvent.getCredential() = _GetCredential;
  
}