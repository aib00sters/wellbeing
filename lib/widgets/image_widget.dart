import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectImagebloc/bloc/selectimage_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectaiassistantpic/bloc/selectaiassistant_bloc.dart';

class ImageSelectionAlert extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  ImageSelectionAlert({super.key});

  Future<void> _getImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    // Use the picked file (e.g., save it, display it, etc.)
    pickedFile?.path;
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    // Use the picked file (e.g., save it, display it, etc.)
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Image'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Take a photo'),
            onTap: () {
              Navigator.pop(context);
              // _getImageFromCamera();
              final selectimage = BlocProvider.of<SelectimageBloc>(context);
              selectimage
                  .add(const SelectimageEvent.selectimage(option: "photo"));
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Choose from gallery'),
            onTap: () {
              Navigator.pop(context);
              final selectimage = BlocProvider.of<SelectimageBloc>(context);
              selectimage
                  .add(const SelectimageEvent.selectimage(option: "gallery"));
            },
          ),
        ],
      ),
    );
  }
}
