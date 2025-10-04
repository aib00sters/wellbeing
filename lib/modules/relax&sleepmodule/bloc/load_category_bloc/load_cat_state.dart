part of 'load_cat_bloc.dart';

@freezed
class LoadCatState with _$LoadCatState {
  const factory LoadCatState.initial() = _Initial;
  const factory LoadCatState.catGetSuccess({required List<String> catNames}) = _catGetSuccess;
  const factory LoadCatState.catGetFail() = _catGetFail;
  
}
