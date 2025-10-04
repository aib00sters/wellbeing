import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/app_functions.dart';

import '../../../../data/isar_models/paint_details_model/paint_details_model.dart';
import '../../../../data/isar_models/recent_model/recent_model.dart';

part 'project_list_bloc.freezed.dart';
part 'project_list_event.dart';
part 'project_list_state.dart';

class ProjectListBloc extends Bloc<ProjectListEvent, ProjectListState> {
  ProjectListBloc() : super(const _Initial()) {
    on<ProjectListEvent>((event, emit) async {
      try {
        if (event is _ProjectSave) {
          emit(const ProjectListState.saveLoading());

          if (event.path.isEmpty) {
            final Directory extDir = await getApplicationDocumentsDirectory();
            final dir = await Directory('${extDir.path}/wellbeing')
                .create(recursive: true);
            String filePath =
                '${dir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';

            final File file = await File(filePath).create();

            file.writeAsBytes(event.image);

            emit(const ProjectListState.projectSaveSuccess());
          } else {
            final File file = File(event.path);

            file.writeAsString(event.projectData);
            // convertToJPEG(imageBytes: event.image)
            //     .then((value) => debugPrint(value.path));
            File savedImagepath = await convertToJPEG(
                imageBytes: event.image,
                filename: file.path.split('/').last.split('.').first);
            PaintDetails paintdata = PaintDetails(
                id: event.isarId > 0 ? event.isarId : null,
                image: event.image,
                filepath: savedImagepath.path,
                dateTime: DateTime.now());

            final savedId = await IsarServices().savePaint(data: paintdata);
            RecentActivities recent = RecentActivities(
                time: DateTime.now(),
                activityId: savedId,
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Classical.png?alt=media&token=0eff763c-14df-45d4-bfda-dd142f5b310a',
                name: file.path.split('/').last.split('.').first,
                songUrl: savedImagepath.path,
                subTitle: '',
                type: 'paint');

            await IsarServices().saveRecent(recent);
            emit(const ProjectListState.projectSaveSuccess());
          }
        } else if (event is _ProjectDelete) {
          final isar = await IsarServices().openDB();
          final File file = File(event.path);
          await file.delete();
          await isar.writeTxn(() async {
            await isar.paintDetails.delete(event.id); // delete
          });
          await IsarServices().deleteRecent(id: event.id);
        }
      } catch (e) {
        emit(const ProjectListState.error());
      }
    });
  }
}
