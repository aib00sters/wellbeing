import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'callcredential_event.dart';
part 'callcredential_state.dart';
part 'callcredential_bloc.freezed.dart';

class CallcredentialBloc
    extends Bloc<CallcredentialEvent, CallcredentialState> {
  CallcredentialBloc() : super(const _Initial()) {
    on<CallcredentialEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _GetCredential) {
        emit(const CallcredentialState.loading());
        try {
          final callcredentialsnapshot = await FirebaseFirestore.instance
              .collection('callcredential')
              .get();
          final credentialdata = callcredentialsnapshot.docs.first.data();
          final appId = credentialdata.values.last;
          final signIn = credentialdata.values.first;
          emit(CallcredentialState.sucess(appid: appId, appsign: signIn));
          print("APPID IS=$appId");
          print("SIGNiN IS=$signIn");
        } catch (e) {
          emit(const CallcredentialState.error());
        }
      }
    });
  }
}
