import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'upload_image_bloc.freezed.dart';
part 'upload_image_event.dart';
part 'upload_image_state.dart';

class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  UploadImageBloc() : super(const _Initial()) {
    on<UploadImageEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _UploadImage) {
          emit(const _Loading());
          final ImagePicker imagePicker = ImagePicker();
          var img = await imagePicker.pickImage(source: event.imageSource);

          if (img != null) {
            emit(_Success(imagePath: img.path));
          } else {
            emit(const _Error(errorMsg: "Failed"));
          }
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
