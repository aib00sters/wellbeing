import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_painting_bloc.freezed.dart';
part 'load_painting_event.dart';
part 'load_painting_state.dart';

class LoadPaintingBloc extends Bloc<LoadPaintingEvent, LoadPaintingState> {
  LoadPaintingBloc() : super(const _Initial()) {
    on<LoadPaintingEvent>((event, emit) async {
      try {
        
        emit(const _Initial());
        if (event is _LoadProject) {
          emit(LoadPaintingState.projectLoading(navigate: !event.isDirectPath));
          if (event.path.isNotEmpty) {
            //final File file = File(event.path);
            // final content = await file.readAsString();
            emit(
              LoadPaintingState.success(
                drawingJson: '',
                isarId: event.isarId,
                filePath: event.path,
                extImagePath: event.extImagePath,
              ),
            );
          } else if (event.extImagePath.isNotEmpty) {
            if (event.isDirectPath) {
              emit(
                LoadPaintingState.success(
                  drawingJson: '',
                  isarId: event.isarId,
                  filePath: event.path,
                  extImagePath: event.extImagePath,
                ),
              );
            } else if (Platform.isAndroid) {
              const platform = MethodChannel("wellbeings/channel");
              // platform.setMethodCallHandler((call) async {
              //   if (call.arguments != null) {
              //     emit(
              //       LoadPaintingState.success(
              //         drawingJson: '',
              //         isarId: event.isarId,
              //         filePath: event.path,
              //         extImagePath: event.extImagePath,
              //       ),
              //     );
              //   }
              //   return true;
              // });
              final path = await platform
                  .invokeMethod('resolveContent', [event.extImagePath]);
              emit(
                LoadPaintingState.success(
                  drawingJson: '',
                  isarId: event.isarId,
                  filePath: event.path,
                  extImagePath: path,
                ),
              );
            } else {
              emit(
                LoadPaintingState.success(
                  drawingJson: '',
                  isarId: event.isarId,
                  filePath: event.path,
                  extImagePath: event.extImagePath,
                ),
              );
            }
          } else {
            emit(
              LoadPaintingState.success(
                drawingJson: '',
                isarId: event.isarId,
                filePath: event.path,
                extImagePath: event.extImagePath,
              ),
            );
          }
        }
      } catch (e) {
        emit(const LoadPaintingState.error());
      }
    });
  }
}
