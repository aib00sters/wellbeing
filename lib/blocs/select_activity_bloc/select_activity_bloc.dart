import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_models/recent_model/recent_model.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../modules/meditaion_module/models/meditation_model/meditation_model.dart';

part 'select_activity_bloc.freezed.dart';
part 'select_activity_event.dart';
part 'select_activity_state.dart';

class SelectActivityBloc
    extends Bloc<SelectActivityEvent, SelectActivityState> {
  SelectActivityBloc() : super(const _Initial()) {
    on<SelectActivityEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _select) {
          emit(const _Loading());
          Activity activity = event.activityData[event.selectedIndex];
          RecentActivities recent = RecentActivities(
            activityId: int.parse(activity.activityId),
            imageUrl: activity.activityImage,
            name: activity.activityName,
            songUrl: activity.songUrl,
            subTitle: activity.subTitle,
            time: DateTime.now(),
            type: activity.type,
          );

          await IsarServices().saveRecent(recent);
          emit(_Success(
              routeName: getRoute(activity.type),
              activityData: activity.type == "music"
                  ? event.activityData
                      .where((element) => element.type == "music")
                      .toList()
                  : [activity]));
        }
      } catch (e) {
        emit(const _Error());
      }
    });
  }

  String getRoute(String type) {
    switch (type) {
      case ("video"):
        return '/videoplayer';
      case ("audio"):
        return '/musicLoadingPage';
      case ("paint"):
        return '/paintPage';
      default:
        return '';
    }
  }
}
