import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_center/data_to_classes.dart';

part 'community_widget_bloc.freezed.dart';
part 'community_widget_event.dart';
part 'community_widget_state.dart';

class CommunityWidgetBloc
    extends Bloc<CommunityWidgetEvent, CommunityWidgetState> {
  CommunityWidgetBloc() : super(const _Initial()) {
    on<CommunityWidgetEvent>((event, emit) {
      try {
        emit(const CommunityWidgetState.initial());
        if (event is _LoadWidget) {
          emit(CommunityWidgetState.success(
              dataToCommunityWidgetLise: event.dataToCommunityWidgetLise));
        }
      } catch (e) {}
    });
  }
}
