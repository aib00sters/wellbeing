part of 'callcredential_bloc.dart';

@freezed
class CallcredentialState with _$CallcredentialState {
  const factory CallcredentialState.initial() = _Initial;
  const factory CallcredentialState.sucess({required String appid,required String appsign,}) = _Sucess;
  const factory CallcredentialState.error() = _Error;
  const factory CallcredentialState.loading() = _Loading;
  
  
  
}
