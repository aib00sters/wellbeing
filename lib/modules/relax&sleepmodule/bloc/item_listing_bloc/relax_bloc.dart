import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relax_event.dart';
part 'relax_state.dart';
part 'relax_bloc.freezed.dart';

class RelaxBloc extends Bloc<RelaxEvent, RelaxState> {
  List<Map<String, dynamic>> datalist = [];
  RelaxBloc() : super(const _Initial()) {
    void refreshData() {
      datalist.clear();
    }

    on<RelaxEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(const RelaxState.initial());
        if (event is _fetchcontents) {
          if (event.tag == "all") {
            refreshData();

            final contentsnapshot = await FirebaseFirestore.instance
                .collection('relaxandsleep')
                .get();

            for (QueryDocumentSnapshot doc in contentsnapshot.docs) {
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
              datalist.add(data);
              print('Document ID: ${doc.id}, Data: $data');
            }
            print(datalist);
            print(datalist.length);
            emit(RelaxState.success(data: datalist));
          } else {
            refreshData();

            final contentsnapshot = await FirebaseFirestore.instance
                .collection('relaxandsleep')
                .where('file_tag', isEqualTo: event.tag)
                .get();

            for (QueryDocumentSnapshot doc in contentsnapshot.docs) {
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
              datalist.add(data);
              print('Document ID: ${doc.id}, Data: $data');
            }
            print(datalist);
            print(datalist.length);
            emit(RelaxState.success(data: datalist));
          }
        } else if (event is _getallContents) {
          refreshData();

          final contentsnapshot = await FirebaseFirestore.instance
              .collection('relaxandsleep')
              .get();
        }
      } catch (e) {
        emit(const RelaxState.Error());
      }
    });
  }
}
