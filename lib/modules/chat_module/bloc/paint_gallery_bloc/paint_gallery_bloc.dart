import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_models/paint_details_model/paint_details_model.dart';
import '../../../../data/isar_services.dart';

part 'paint_gallery_bloc.freezed.dart';
part 'paint_gallery_event.dart';
part 'paint_gallery_state.dart';

class PaintGalleryBloc extends Bloc<PaintGalleryEvent, PaintGalleryState> {
  PaintGalleryBloc() : super(const _Initial()) {
    on<PaintGalleryEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchPaintings) {
          emit(const _Loading());
          List<dynamic> data = await IsarServices().getPaintProjects();
          emit(_Success(
            groupName: event.groupName,
            paintingsList: List<PaintDetails>.from(data.map((e) => PaintDetails(
                dateTime: e.dateTime,
                filepath: e.filepath,
                image: e.image,
                id: e.id))),
            selectedIndexes: [],
            chatId: event.chatId,
            recieverId: event.recieverId,
          ));
        } else if (event is _SelectPainting) {
          var selecedIndexes = event.selectedIndexes.toList();
          if (selecedIndexes.contains(event.selectedIndex)) {
            selecedIndexes.remove(event.selectedIndex);
          } else {
            selecedIndexes.add(event.selectedIndex);
          }
          emit(_Success(
              paintingsList: event.paintingsList,
              selectedIndexes: selecedIndexes,
              chatId: event.chatId,
              recieverId: event.recieverId,
              groupName: event.groupName));
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
