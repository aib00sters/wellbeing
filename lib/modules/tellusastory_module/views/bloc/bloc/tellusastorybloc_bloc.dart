import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tellusastorybloc_event.dart';
part 'tellusastorybloc_state.dart';
part 'tellusastorybloc_bloc.freezed.dart';

class TellusastoryblocBloc extends Bloc<TellusastoryblocEvent, TellusastoryblocState> {
  TellusastoryblocBloc() : super(_Initial()) {
    on<TellusastoryblocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
