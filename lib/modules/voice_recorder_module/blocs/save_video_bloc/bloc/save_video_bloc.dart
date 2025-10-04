import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_video_event.dart';
part 'save_video_state.dart';
part 'save_video_bloc.freezed.dart';

class SaveVideoBloc extends Bloc<SaveVideoEvent, SaveVideoState> {
  SaveVideoBloc() : super(_Initial()) {
    on<SaveVideoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
