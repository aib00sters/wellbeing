part of 'projects_fetch_bloc.dart';

@freezed
class ProjectsFetchEvent with _$ProjectsFetchEvent {
  const factory ProjectsFetchEvent.projectsFetch() = _ProjectsFetch;
  const factory ProjectsFetchEvent.started() = _Started;
  const factory ProjectsFetchEvent.updatePaintList() = _UpdatePaintList;
}
