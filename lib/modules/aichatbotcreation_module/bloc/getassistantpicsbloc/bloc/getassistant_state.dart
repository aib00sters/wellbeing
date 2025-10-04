part of 'getassistant_bloc.dart';

@freezed
class GetassistantState with _$GetassistantState {
  const factory GetassistantState.initial() = _Initial;
  const factory GetassistantState.error() = _error;
  const factory GetassistantState.loading() = _loading;
  const factory GetassistantState.sucess({required List<Map<String,dynamic>>data }) = _sucess;
  
  
  
}
