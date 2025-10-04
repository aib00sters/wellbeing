import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_models/recordings_model/recordings_mode.dart';
import 'package:wellbeings/data/isar_models/video_data_model/videodata.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../../../data/isar_models/recent_model/recent_model.dart';

part 'save_recordings_bloc.freezed.dart';
part 'save_recordings_event.dart';
part 'save_recordings_state.dart';

class SaveRecordingsBloc
    extends Bloc<SaveRecordingsEvent, SaveRecordingsState> {
  SaveRecordingsBloc() : super(const _Initial()) {
    on<SaveRecordingsEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _SaveRecording) {
          emit(const _Loading());
          RecordingData data = RecordingData();
          data
            ..type = event.type
            ..filePath = event.path
            ..name = event.name
            ..dateTime = DateTime.now();
          final id = await IsarServices().saveRecording(data);
          late int videoid;
          if (event.type == "video") {
            VideoData videodata = VideoData();
            videodata.title = event.name;
            videodata.date = DateTime.now();
            videoid = await IsarServices().saveVideoData(videodata);
            RecentActivities recent = RecentActivities(
              activityId: id + 3000,
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Classical.png?alt=media&token=0eff763c-14df-45d4-bfda-dd142f5b310a",
              name: event.name,
              songUrl: event.path,
              subTitle: "",
              time: DateTime.now(),
              type: "video",
            );

            await IsarServices().saveRecent(recent);
          } else if (event.type == "audio") {
            VideoData videodata = VideoData();
            videodata.title = event.name;
            videodata.date = DateTime.now();
            videoid = await IsarServices().saveVideoData(videodata);
            RecentActivities recent = RecentActivities(
              activityId: id + 3000,
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Classical.png?alt=media&token=0eff763c-14df-45d4-bfda-dd142f5b310a",
              name: event.name,
              songUrl: event.path,
              subTitle: "",
              time: DateTime.now(),
              type: "audio",
            );

            await IsarServices().saveRecent(recent);
          }

          emit(_Success(
              path: event.path,
              convert: event.connvert,
              id: videoid.toString()));
        } else if (event is _Delete) {
          emit(const _Loading());
          File file = File(event.filePath);
          await IsarServices().deleteRecording(id: event.id);
          await IsarServices().deleteRecent(id: event.id + 3000);

          await file.delete();
          emit(const _Success(path: "", convert: "", id: ""));
        }
      } catch (e) {
        emit(_Error(errorMessage: e.toString()));
      }
    });
  }
}
