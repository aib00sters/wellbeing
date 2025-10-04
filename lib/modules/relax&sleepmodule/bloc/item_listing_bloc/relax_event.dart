part of 'relax_bloc.dart';

@freezed
class RelaxEvent with _$RelaxEvent {
  const factory RelaxEvent.started() = _Started;
  const factory RelaxEvent.fetchcontents({required String tag}) =
      _fetchcontents;
  const factory RelaxEvent.getallContents() = _getallContents;
}
