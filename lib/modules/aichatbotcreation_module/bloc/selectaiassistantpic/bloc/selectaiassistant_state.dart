part of 'selectaiassistant_bloc.dart';

@freezed
class SelectaiassistantState with _$SelectaiassistantState {
  const factory SelectaiassistantState.initial() = _Initial;
  const factory SelectaiassistantState.aiassistantselected({required String imagelink}) = _aiassistantselected;
  
}
