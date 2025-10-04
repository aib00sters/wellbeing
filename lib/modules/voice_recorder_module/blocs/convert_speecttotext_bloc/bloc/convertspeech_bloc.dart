import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
// import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
// import 'package:ffmpeg_kit_flutter/ffmpeg_session.dart';
// import 'package:ffmpeg_kit_flutter/ffmpeg_session_complete_callback.dart';
// import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wellbeings/data/isar_models/video_data_model/videodata.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/speechtotext_module/speechtoservice.dart';
import 'package:wellbeings/modules/voice_recorder_module/service/convertservice.dart';

part 'convertspeech_event.dart';
part 'convertspeech_state.dart';
part 'convertspeech_bloc.freezed.dart';

class ConvertspeechBloc extends Bloc<ConvertspeechEvent, ConvertspeechState> {
  ConvertspeechBloc() : super(const _Initial()) {
    on<ConvertspeechEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        if (event is _Convertaudiototext) {
          String s = "";
          emit(const ConvertspeechState.loading());
          File file = File(event.path);
          List<int> fileBytes = await file.readAsBytes();
          String base64Audio = base64Encode(fileBytes);
          final response = await getspeechdata(audiocontent: base64Audio);
          for (var result in response.results) {
            for (var alternatives in result.alternatives) {
              if (s.isNotEmpty) {
                s +=
                    ' '; // Add a space before adding the next transcript if 's' is not empty
              }
              s += alternatives.transcript;
            }
          }
          emit(ConvertspeechState.convertedspeech(speech: s, path: event.path));
        }
      } catch (e) {
        emit(const ConvertspeechState.error());
      }
      if (event is _Convertaoudiototextfromvideo) {
        try {
          emit(const ConvertspeechState.loadinfvideoconvert());
          final Directory tempDir = await getTemporaryDirectory();
          String outputPath = '${tempDir.path}/output.mp3';
          final File outputFile = File(outputPath);
          if (await outputFile.exists()) {
            // Delete the file
            await outputFile.delete();
            print("Existing file deleted.");
          }
          const MethodChannel channel = MethodChannel('wellbeings/channel');
          final String mp3Path = await channel.invokeMethod('convertMp4ToMp3', {
            'mp4Path': event.path,
            'outputPath': outputPath,
          });
          print("\x1b[32mdata=$mp3Path");
          //print(mp3Path);
          File file = File(mp3Path);
          List<int> fileBytes = await file.readAsBytes();
          String base64Audio = base64Encode(fileBytes);
          final response = await getspeechdata(audiocontent: base64Audio);
          String s = "";
          for (var result in response.results) {
            for (var alternatives in result.alternatives) {
              if (s.isNotEmpty) {
                s +=
                    ' '; // Add a space before adding the next transcript if 's' is not empty
              }
              s += alternatives.transcript;
            }
          }
          await IsarServices().saveNote(note: s, id: event.videoid);
          emit(ConvertspeechState.convertedspeechfromvide(
              speech: s, path: event.path, id: event.videoid));
        } catch (e) {
          emit(const ConvertspeechState.errorinvodeoconversion());
        }
      }

      // String originalPath = event.path;
      // String correctedPath =
      //     originalPath.substring(2); // Removes the first two characters
      // final command =
      //     '-i $originalPath -vn -ar 44100 -ac 2 -b:a 192k $outputPath';
      // print(command);
      // // final command1 =
      // //     '-i $originalPath -vn -acodec libmp3lame -q:a 4 $outputPath';

      // FFmpegKit.executeAsync(command).then((ReturnCod) async {
      //   if (ReturnCod == 0) {
      //     File file = File(outputPath);
      //     List<int> fileBytes = await file.readAsBytes();
      //     String base64Audio = base64Encode(fileBytes);
      //     final response = await getspeechdata(audiocontent: base64Audio);
      //     if (!emit.isDone) {
      //       emit(ConvertspeechState.convertedspeechfromvide(
      //           speech:
      //               response.results.first.alternatives.first.transcript,
      //           path: event.path));
      //     }
      //   } else {
      //     if (!emit.isDone) {
      //       emit(const ConvertspeechState.errorinvodeoconversion());
      //     }
      //   }
      // });
      // rc.getOutput()
      // if (rc.getReturnCode() != null) {
      //   File file = File(outputPath);
      //   List<int> fileBytes = await file.readAsBytes();
      //   String base64Audio = base64Encode(fileBytes);
      //   final response = await getspeechdata(audiocontent: base64Audio);

      //   emit(ConvertspeechState.convertedspeechfromvide(
      //       speech: response.results.first.alternatives.first.transcript,
      //       path: event.path));
      // } else {
      //   emit(const ConvertspeechState.errorinvodeoconversion());
      // }
      //   } catch (e) {
      //     if (!emit.isDone) {
      //       emit(const ConvertspeechState.errorinvodeoconversion());
      //     }
      //   }
      // }

      // FFmpegKit.execute(
      //         '-i ${event.path} -vn -ab 192k -ar 44100 -ac 2 $outputPath')
      //     .then((session) async {
      //   final returnCode = await session.getReturnCode();

      // if (ReturnCode.isSuccess(returnCode)) {
      //   // SUCCESS

      //   print("Conversion successful");
      //   File file = File(outputPath);
      //   List<int> fileBytes = await file.readAsBytes();
      //   String base64Audio = base64Encode(fileBytes);
      //   final response = await getspeechdata(audiocontent: base64Audio);
      //   emit(ConvertspeechState.convertedspeech(
      //       speech: response.results.first.alternatives.first.transcript,
      //       path: event.path));
      // } else if (ReturnCode.isCancel(returnCode)) {
      //   emit(const ConvertspeechState.error());
      // } else {
      //   // ERROR
      //   emit(const ConvertspeechState.error());
      // }
    });
  }
}
