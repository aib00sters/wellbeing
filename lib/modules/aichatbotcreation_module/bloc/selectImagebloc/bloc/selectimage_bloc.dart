import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'selectimage_event.dart';
part 'selectimage_state.dart';
part 'selectimage_bloc.freezed.dart';

class SelectimageBloc extends Bloc<SelectimageEvent, SelectimageState> {
  final ImagePicker _picker = ImagePicker();
  late String? _pickedImagePath;
  SelectimageBloc() : super(const _Initial()) {
    on<SelectimageEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _selectimage) {
        if (event.option == "photo") {
          final pickedimageFile =
              await _picker.pickImage(source: ImageSource.camera);
          if (pickedimageFile != null) {
            String imagePath = pickedimageFile.path;
            // Now you can use the imagePath variable
            emit(SelectimageState.selectedimage(imagepath: imagePath));
          } else {
            // Handle case where user cancels image selection
            emit(const SelectimageState.error());
          }
        } else {
          final pickedimageFile =
              await _picker.pickImage(source: ImageSource.gallery);
          if (pickedimageFile != null) {
            String imagePath = pickedimageFile.path;
            // Now you can use the imagePath variable
            emit(SelectimageState.selectedimage(imagepath: imagePath));
          } else {
            // Handle case where user cancels image selection
            emit(const SelectimageState.error());
          }
        }
      } else if (event is _uploadimagetofirebase) {
        try {
          FirebaseStorage storage = FirebaseStorage.instance;
          Reference ref =
              storage.ref().child('images/${DateTime.now().toString()}');
          UploadTask uploadTask = ref.putFile(File(event.imagepath));
          TaskSnapshot snapshot = await uploadTask;
          String downloadUrl = await snapshot.ref.getDownloadURL();
          emit(SelectimageState.uploadedimage(imagepath: downloadUrl));
        } catch (e) {
          print(e.toString());
          return;
        }
      }
    });
  }
}
