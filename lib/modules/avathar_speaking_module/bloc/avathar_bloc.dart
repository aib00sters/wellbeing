import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/avathar_speaking_module/services/stream_service.dart';

part 'avathar_event.dart';
part 'avathar_state.dart';
part 'avathar_bloc.freezed.dart';

class AvatharBloc extends Bloc<AvatharEvent, AvatharState> {
  AvatharBloc() : super(const _Initial()) {
    on<AvatharEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _Callavathar) {
        // final data = await makePostRequest(imageurl: '');
      }
    });
  }
}
