// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wellbeings/data/isar_models/video_data_model/videodata.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

/// Stateful widget to fetch and then display video content.
class VideoWithSpeechPage extends StatefulWidget {
  const VideoWithSpeechPage({
    super.key,
    required this.speech,
    required this.videopath,
    required this.videoid,
  });
  final String videopath;
  final String speech;
  final String videoid;
  @override
  _VideoWithSpeechPageState createState() => _VideoWithSpeechPageState();
}

class _VideoWithSpeechPageState extends State<VideoWithSpeechPage> {
  late VideoPlayerController _controller;
  VideoData? data;
  @override
  void initState() {
    super.initState();
    File videoFile = File(widget.videopath);
    _controller = VideoPlayerController.file(videoFile)
      ..initialize().then((value) {
        setState(() {});
      });
    getdata(widget.videoid);
    // _controller = VideoPlayerController.networkUrl(Uri.parse(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
    //   ..initialize().then((_) {
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ScreenSetter(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: SizeConfig.screenwidth,
                // Avoid setting a fixed height, let it be flexible
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: _controller.value.isInitialized
                      ? VideoPlayer(_controller)
                      : const SizedBox(),
                ),
              ),
              Container(
                  color: Colors.blue[50],
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Title : ${data?.title ?? ""}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.sizeMultiplier * 8,
                        ),
                      ),
                      Text(data?.time ?? ""),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.speech,
                    style: TextStyle(fontSize: SizeConfig.textMultiplier * 4)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future<void> getdata(String id) async {
    final videoid = int.parse(id);
    data = await IsarServices().getVideoData(videoid);
  }
}
