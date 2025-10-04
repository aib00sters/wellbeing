part of 'select_activity_bloc.dart';

@freezed
class SelectActivityState with _$SelectActivityState {
  const factory SelectActivityState.error() = _Error;
  const factory SelectActivityState.initial() = _Initial;
  const factory SelectActivityState.loading() = _Loading;
  const factory SelectActivityState.success({
    required String routeName,
    required List<Activity> activityData,
  }) = _Success;
}
