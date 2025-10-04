part of 'activity_list_bloc.dart';

@freezed
class ActivityListState with _$ActivityListState {
  const factory ActivityListState.error({required String errorMessage}) =
      _Error;
  const factory ActivityListState.initial() = _Initial;
  const factory ActivityListState.loadding() = _Loadding;
  const factory ActivityListState.success(
      {required MeditationListModel meditationListModel,
      required int selectedIndex}) = _Success;
}
