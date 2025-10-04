part of 'activity_list_bloc.dart';

@freezed
class ActivityListEvent with _$ActivityListEvent {
  const factory ActivityListEvent.fetchList({required String category}) =
      _FetchList;
  const factory ActivityListEvent.started() = _Started;
}
