part of 'project_list_bloc.dart';

@freezed
class ProjectListState with _$ProjectListState {
  const factory ProjectListState.error() = _Error;
  const factory ProjectListState.initial() = _Initial;
  const factory ProjectListState.projectSaveSuccess() = _ProjectSaveSuccess;
  const factory ProjectListState.saveLoading() = _Loading;
}
