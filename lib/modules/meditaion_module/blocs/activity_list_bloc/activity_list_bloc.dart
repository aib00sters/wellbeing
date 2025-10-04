import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/meditaion_module/models/meditation_model/meditation_model.dart';

import 'jsons.dart';

part 'activity_list_bloc.freezed.dart';
part 'activity_list_event.dart';
part 'activity_list_state.dart';

class ActivityListBloc extends Bloc<ActivityListEvent, ActivityListState> {
  ActivityListBloc() : super(const _Initial()) {
    on<ActivityListEvent>((event, emit) {
      try {
        emit(const _Initial());
        if (event is _FetchList) {
          final resp = MeditationListModel.fromJson(getData(event.category));
          emit(_Success(meditationListModel: resp, selectedIndex: 0));
        }
      } catch (e) {
        emit(_Error(errorMessage: e.toString()));
      }
    });
  }

  Map<String, dynamic> getData(String category) {
    switch (category) {
      case ("Meditation"):
        {
          return meditationJson;
        }
      case ("Painting"):
        {
          return paintjson;
        }
      case ("Voice Activities"):
        {
          return voiceJson;
        }
      default:
        return {"result": []};
    }
  }
}
