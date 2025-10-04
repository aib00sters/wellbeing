import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectaiassistant_event.dart';
part 'selectaiassistant_state.dart';
part 'selectaiassistant_bloc.freezed.dart';

class SelectaiassistantBloc
    extends Bloc<SelectaiassistantEvent, SelectaiassistantState> {
  SelectaiassistantBloc() : super(const _Initial()) {
    on<SelectaiassistantEvent>((event, emit) {
      // TODO: implement event handler
      if (event is _Selectedaiassistant) {
        emit(SelectaiassistantState.aiassistantselected(
            imagelink: event.imagelink));
      }
    });
  }
}
