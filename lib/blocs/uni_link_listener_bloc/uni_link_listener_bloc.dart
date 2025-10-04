import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:uni_links/uni_links.dart';

part 'uni_link_listener_bloc.freezed.dart';
part 'uni_link_listener_event.dart';
part 'uni_link_listener_state.dart';

class UniLinkListenerBloc
    extends Bloc<UniLinkListenerEvent, UniLinkListenerState> {
  UniLinkListenerBloc() : super(const _Initial()) {
    on<UniLinkListenerEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _Listen) {
          // emit(const _Loading());
          // // final initialLink = await getInitialLink();
          // if (initialLink != null) {
          //   emit(_Success(filePath: initialLink));
          // }
          // await emit.forEach(
          //   linkStream,
          //   onData: (data) {
          //     if (data != null) {
          //       return (_Success(filePath: data));
          //     } else {
          //       return (const _Error(errorMsg: 'No links found'));
          //     }
          //   },
          // );
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
