part of 'uni_link_listener_bloc.dart';

@freezed
class UniLinkListenerEvent with _$UniLinkListenerEvent {
  const factory UniLinkListenerEvent.listen() = _Listen;
  const factory UniLinkListenerEvent.started() = _Started;
}
