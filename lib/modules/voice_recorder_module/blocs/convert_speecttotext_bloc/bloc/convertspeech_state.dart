part of 'convertspeech_bloc.dart';

@freezed
class ConvertspeechState with _$ConvertspeechState {
  const factory ConvertspeechState.initial() = _Initial;
  const factory ConvertspeechState.convertedspeech({required String speech,required String path}) = _convertedspeech;
  const factory ConvertspeechState.loading() = _Loading;
  const factory ConvertspeechState.error() = _Error;
  const factory ConvertspeechState.sucess() = _sucess;
const factory ConvertspeechState.loadinfvideoconvert() = _Loadinfvideoconvert;
const factory ConvertspeechState.errorinvodeoconversion() = _Errorinvodeoconversion;

  const factory ConvertspeechState.convertedspeechfromvide({required String speech,required String path,required String id}) = _Convertedspeechfromvide;
  
  
  
  
  
  
  
}
