import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_models/recordings_model/recordings_mode.dart';

import '../../../../data/isar_services.dart';

part 'recording_list_bloc.freezed.dart';
part 'recording_list_event.dart';
part 'recording_list_state.dart';

class RecordingListBloc extends Bloc<RecordingListEvent, RecordingListState> {
  RecordingListBloc() : super(const _Initial()) {
    on<RecordingListEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _FetchList) {
          emit(const _Loading());
          final isar = await IsarServices().openDB();
          List<dynamic> data = await IsarServices().getRecordings();
          List<RecordingData> recordings =
              List<RecordingData>.from(data.map((e) => RecordingData()
                ..id = e.id!
                ..name = e.name!
                ..dateTime = e.dateTime!
                ..filePath = e.filePath!
                ..type = e.type!));
          emit(_Success(recordings: recordings));
          isar.recordingDatas.watchLazy().listen((event) {
            add(const RecordingListEvent.refresh());
          });

          // final extDir = (await getApplicationDocumentsDirectory());
          // final directory = "${extDir.path}/Recordings";
          // if (!(await Directory(directory).exists())) {
          //   await Directory(directory).create();
          // }
          // List<FileSystemEntity> files = Directory(directory).listSync();

          // emit(_Success(
          //     paths: files.isEmpty ? [] : files.map((e) => e.path).toList()));
          // await emit.forEach(
          //   Directory(directory).watch(),
          //   onData: (data) {
          //     List<FileSystemEntity> files = Directory(directory).listSync();

          //     return (_Success(
          //         paths:
          //             files.isEmpty ? [] : files.map((e) => e.path).toList()));
          //   },
          // );
        } else if (event is _Refresh) {
          List<dynamic> data = await IsarServices().getRecordings();

          emit(_Success(
              recordings:
                  List<RecordingData>.from(data.map((e) => RecordingData()
                    ..name = e.name!
                    ..id = e.id!
                    ..type = e.type!
                    ..dateTime = e.dateTime!
                    ..filePath = e.filePath!))));
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
