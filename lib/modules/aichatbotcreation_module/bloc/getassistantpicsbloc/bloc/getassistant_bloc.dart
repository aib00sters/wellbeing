import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getassistant_event.dart';
part 'getassistant_state.dart';
part 'getassistant_bloc.freezed.dart';

class GetassistantBloc extends Bloc<GetassistantEvent, GetassistantState> {
  List<Map<String, dynamic>> datalist = [];
  GetassistantBloc() : super(const _Initial()) {
    on<GetassistantEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _getavathar) {
        datalist.clear();
        final QuerySnapshot queryaAvatars =
            await FirebaseFirestore.instance.collection("avatars").get();
        for (QueryDocumentSnapshot doc in queryaAvatars.docs) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          datalist.add(data);
          print('Document ID: ${doc.id}, Data: $data');
        }
        emit(GetassistantState.sucess(data: datalist));
        //emit(SelectassistantState.sucess(avatarImages: avatarsModel));
      }
    });
  }
}
