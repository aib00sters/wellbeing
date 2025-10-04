import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_cat_event.dart';
part 'load_cat_state.dart';
part 'load_cat_bloc.freezed.dart';

class LoadCatBloc extends Bloc<LoadCatEvent, LoadCatState> {
  LoadCatBloc() : super(const _Initial()) {
    on<LoadCatEvent>((event, emit) async {
      try {
        emit(const LoadCatState.initial());
        if (event is _getCatEvent) {
          
          QuerySnapshot querySnapshot =
              await FirebaseFirestore.instance.collection('RandStitle').get();

          // Extract document names
          List<String> names = [];
          for (var doc in querySnapshot.docs) {
            names.add(doc.id);

          }
          emit(LoadCatState.catGetSuccess(catNames: names));
        }
      } catch (e) {
        emit(const LoadCatState.catGetFail());
      }
    });
  }
}
