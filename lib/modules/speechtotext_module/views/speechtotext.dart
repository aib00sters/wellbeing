import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:wellbeings/modules/speechtotext_module/speechtoservice.dart';

class FilePickerPage extends StatefulWidget {
  const FilePickerPage({super.key});

  @override
  _FilePickerPageState createState() => _FilePickerPageState();
}

class _FilePickerPageState extends State<FilePickerPage> {
  String? _filePath;
  String encode = "";
  String data = "";

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'wav', 'm4a', 'flac'], // Specify audio formats
    );

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an Audio File'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _pickFile,
                child: const Text('Select File'),
              ),
              const SizedBox(height: 20),
              Text(_filePath ?? 'No file selected.'),
              ElevatedButton(
                onPressed: () async {
                  encode = await encodeAudioFile(_filePath!);
                },
                child: const Text('encode file'),
              ),
              ElevatedButton(
                onPressed: () async {
                 // final d = await getspeechdata(audiocontent: encode);
                  //final s = d.results.first.alternatives.first.transcript;
                  // print(s);
                  // setState(() {
                  //   data = s;
                  // });
                  // print("data=$data");
                },
                child: const Text('sent file'),
              ),
              Text(data ?? ''),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> encodeAudioFile(String filePath) async {
    File file = File(filePath);
    List<int> fileBytes = await file.readAsBytes();
    String base64Audio = base64Encode(fileBytes);
    return base64Audio;
  }
}
