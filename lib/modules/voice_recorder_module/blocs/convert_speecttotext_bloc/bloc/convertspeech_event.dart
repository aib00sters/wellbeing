part of 'convertspeech_bloc.dart';

@freezed
class ConvertspeechEvent with _$ConvertspeechEvent {
  const factory ConvertspeechEvent.started() = _Started;
 const factory ConvertspeechEvent.convertaudiototext({required String path,required String audioid}) = _Convertaudiototext;
 const factory ConvertspeechEvent.convertaoudiototextfromvideo({required String path,required String videoid}) = _Convertaoudiototextfromvideo;
 
 
  
}