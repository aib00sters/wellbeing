part of 'select_activity_bloc.dart';

@freezed
class SelectActivityEvent with _$SelectActivityEvent {
  const factory SelectActivityEvent.select({
    required List<Activity> activityData,
    required int selectedIndex,
  }) = _select;
  const factory SelectActivityEvent.started() = _Started;
}
