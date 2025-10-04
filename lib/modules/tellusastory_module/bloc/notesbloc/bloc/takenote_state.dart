part of 'takenote_bloc.dart';

@freezed
class TakenoteState with _$TakenoteState {
  const factory TakenoteState.initial() = _Initial;
  const factory TakenoteState.notes({required String notes}) = _Notes;
  const factory TakenoteState.error() = _Error;
  
  
}
