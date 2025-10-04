import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/size_config.dart';

class AddAssistantPopup extends StatefulWidget {
  const AddAssistantPopup({super.key});

  @override
  State<AddAssistantPopup> createState() => _AddAssistantPopupState();
}

class _AddAssistantPopupState extends State<AddAssistantPopup> {
  File? _imageFile;
  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = pickedImage != null ? File(pickedImage.path) : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: SizeConfig.screenwidth * .7,
      // height: SizeConfig.screenheight * .8,
      child: AlertDialog(
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        //title: const Text('Add AI Assistant Details'),
        content: SizedBox(
          width: SizeConfig.screenwidth * 0.7,
          height: SizeConfig.screenheight * 0.45,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenheight * .03,
                ),
                InkWell(
                  onTap: () => _getImage(),
                  child: CircleAvatar(
                    radius: SizeConfig.sizeMultiplier * 15,
                    backgroundImage:
                        _imageFile != null ? FileImage(_imageFile!) : null,
                    child: _imageFile == null
                        ? Icon(Icons.person,
                            size: SizeConfig.sizeMultiplier * 25)
                        : null,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .06,
                  width: SizeConfig.screenwidth * .7,
                  child: const TextField(
                    decoration: InputDecoration(
                        labelText: "What assistance do you require?",
                        //labelStyle: AppTextStyle.commonTextStyle(),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Need of the assistant"),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .03,
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .06,
                  width: SizeConfig.screenwidth * .7,
                  child: const TextField(
                    decoration: InputDecoration(
                        labelText: "What is assistant name?",
                        //labelStyle: AppTextStyle.commonTextStyle(),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Name"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("submit"))
              ],
            ),
          ),
        ),
        // actions: <Widget>[
        //   TextButton(
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //     child: const Text('Cancel'),
        //   ),
        //   ElevatedButton(
        //     onPressed: () {
        //       // Add functionality to save the details
        //     },
        //     child: const Text('Save'),
        //   ),
        // ],
      ),
    );
  }
}
