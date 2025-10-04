part of 'aichatbot_bloc.dart';

@freezed
class AichatbotEvent with _$AichatbotEvent {
  const factory AichatbotEvent.started() = _Started;
  const factory AichatbotEvent.addaidetails({required String name,required String description,required String image}) = _addaidetails;
  
}