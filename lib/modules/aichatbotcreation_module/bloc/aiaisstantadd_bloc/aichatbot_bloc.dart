import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/service/threadidservice.dart';

part 'aichatbot_event.dart';
part 'aichatbot_state.dart';
part 'aichatbot_bloc.freezed.dart';

class AichatbotBloc extends Bloc<AichatbotEvent, AichatbotState> {
  AichatbotBloc() : super(const _Initial()) {
    final List<String> imageUrls = [
      'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*jZ9v-2QShwnfCwHlEZCmDw.png',
      'https://carbon-media.accelerator.net/0000000cTIV/9zJLShTIvIMd1Dz5xABjPu;1439x1863.jpeg?auto=webp',

      // Add more image URLs as needed
    ];
    on<AichatbotEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const AichatbotState.initial());
      if (event is _addaidetails) {
        try {
          emit(const AichatbotState.loading());
          //final data = getthreadid(name: event.name, description: event.description);
          CollectionReference bots =
              FirebaseFirestore.instance.collection('aibotdetails');
          Random random = Random();
          int randomIndex = random.nextInt(imageUrls.length);
          final loginid = await IsarServices().getLoginId();

          await bots.add({
            "userid": loginid,
            'assistant_id': 'asst_Y9qQsEgRShGBQA5VIwptdJm0',
            'botid': '1002',
            'botimage': event.image,
            'botname': event.name,
            'botdescription': event.description,
            // 'botno': '2',
            'thread_id': 'thread_5llaO2MpF7PWodPyUQPlSjgU'
          }).then((value) {
            emit(const AichatbotState.sucess());
          });
        } catch (e) {
          emit(const AichatbotState.error());
        }
      }
    });
  }
}
