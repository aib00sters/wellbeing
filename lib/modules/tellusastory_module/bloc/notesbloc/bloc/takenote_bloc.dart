import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

part 'takenote_event.dart';
part 'takenote_state.dart';
part 'takenote_bloc.freezed.dart';

class TakenoteBloc extends Bloc<TakenoteEvent, TakenoteState> {
  final stt.SpeechToText _speech = SpeechToText();
  String _text = '';
  bool speechEnabled = false;
  bool _isListing = false;
  TakenoteBloc() : super(const _Initial()) {
    on<TakenoteEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        if (event is _Startspeech) {
          if (!_isListing) {
            bool available = await _speech.initialize(
              onStatus: (val) async {
                print('onStatus: $val');
                if (val == "notListening") {
                  print("notlistening");
                  emit(TakenoteState.notes(notes: _text));
                }
                if (val == "done") {
                  print("stoppppppp");

                  //emit(TakenoteState.notes(notes: _text));
                }
              },
              onError: (val) => print('onError:$val'),
            );

            if (available) {
              stt.ListenMode.deviceDefault;
              _speech.listen(
                  listenFor: const Duration(minutes: 60),
                  cancelOnError: true,
                  onResult: (val) {
                    _text = val.recognizedWords;

                    if (val.hasConfidenceRating && val.confidence > 0) {
                      print("The text is=$_text");
                    }
                  });
            }
            _isListing = false;
          }
        }
      } catch (e) {
        emit(const TakenoteState.error());
      }
    });
  }
}
