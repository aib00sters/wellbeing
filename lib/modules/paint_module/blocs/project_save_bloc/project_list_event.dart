part of 'project_list_bloc.dart';

@freezed
class ProjectListEvent with _$ProjectListEvent {
  const factory ProjectListEvent.projectDelete(int id, String path) =
      _ProjectDelete;
  const factory ProjectListEvent.projectSave(
    Uint8List image,
    String projectData,
    String path,
    int isarId,
  ) = _ProjectSave;
  const factory ProjectListEvent.started() = _Started;
}
