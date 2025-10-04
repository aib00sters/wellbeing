import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectImagebloc/bloc/selectimage_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectaiassistantpic/bloc/selectaiassistant_bloc.dart';
import 'package:wellbeings/modules/login_module/widgets/loadingoverlay.dart';
import 'package:wellbeings/utilities/size_config.dart';

class ImageCompletionAlert extends StatefulWidget {
  final String imagepath;
  const ImageCompletionAlert({super.key, required this.imagepath});

  @override
  State<ImageCompletionAlert> createState() => _ImageCompletionAlertState();
}

class _ImageCompletionAlertState extends State<ImageCompletionAlert> {
  final ImagePicker _picker = ImagePicker();
  bool convertToAvatar = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: SizeConfig.screenwidth * .9,
        height: SizeConfig.screenheight * .3,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: widget.imagepath != null
                  ? FileImage(File(widget.imagepath))
                  : null,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenwidth * .04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('convert into an avatar?'),
                  Checkbox(
                    value: convertToAvatar,
                    onChanged: (bool? value) {
                      setState(() {
                        convertToAvatar = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final uploadimagebloc =
                      BlocProvider.of<SelectimageBloc>(context);
                  uploadimagebloc.add(SelectimageEvent.uploadimagetofirebase(
                      imagepath: widget.imagepath));
                  //LoadingOverlay().show(context);
                },
                child: const Text("Upload image")),
          ],
        ),
      ),
    );
  }
}
