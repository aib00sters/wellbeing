part of 'relax_bloc.dart';

@freezed
class RelaxState with _$RelaxState {
  const factory RelaxState.initial() = _Initial;
  const factory RelaxState.success({required List<Map<String, dynamic>> data}) =
      _Success;
  const factory RelaxState.Error() = _Error;
}
