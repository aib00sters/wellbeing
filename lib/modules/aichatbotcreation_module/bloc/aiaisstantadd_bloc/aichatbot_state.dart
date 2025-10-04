part of 'aichatbot_bloc.dart';

@freezed
class AichatbotState with _$AichatbotState {
  const factory AichatbotState.initial() = _Initial;
  const factory AichatbotState.loading() = _loading;
  const factory AichatbotState.sucess() = _sucess;
  const factory AichatbotState.error() = _error;
  
  
  
}
