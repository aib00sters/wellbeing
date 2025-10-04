import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_models/paint_details_model/paint_details_model.dart';
import '../../../../data/isar_services.dart';

part 'projects_fetch_bloc.freezed.dart';
part 'projects_fetch_event.dart';
part 'projects_fetch_state.dart';

class ProjectsFetchBloc extends Bloc<ProjectsFetchEvent, ProjectsFetchState> {
  ProjectsFetchBloc() : super(const _Initial()) {
    on<ProjectsFetchEvent>((event, emit) async {
      emit(const _Initial());
      try {
        final isar = await IsarServices().openDB();

        if (event is _ProjectsFetch) {
          emit(const ProjectsFetchState.fetchLoading());
          List<dynamic> data = await IsarServices().getPaintProjects();
          emit(_FetchSuccess(
              recentList: List<PaintDetails>.from(data.map((e) => PaintDetails(
                  filepath: e.filepath,
                  image: e.image,
                  dateTime: e.dateTime,
                  id: e.id)))));

          isar.paintDetails.watchLazy().listen((event) {
            add(const _UpdatePaintList());
          });
        } else if (event is _UpdatePaintList) {
          List<dynamic> data = await IsarServices().getPaintProjects();
          emit(_FetchSuccess(
              recentList: List<PaintDetails>.from(data.map((e) => PaintDetails(
                  dateTime: e.dateTime,
                  filepath: e.filepath,
                  image: e.image,
                  id: e.id)))));
        }
      } catch (e) {
        emit(const ProjectsFetchState.fetcherror());
      }
    });
  }
}
