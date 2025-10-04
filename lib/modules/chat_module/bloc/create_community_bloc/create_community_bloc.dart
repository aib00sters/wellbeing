import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../models/user_list_item_model/user_list_item_model.dart';

part 'create_community_bloc.freezed.dart';
part 'create_community_event.dart';
part 'create_community_state.dart';

class CreateCommunityBloc
    extends Bloc<CreateCommunityEvent, CreateCommunityState> {
  CreateCommunityBloc() : super(const _Initial()) {
    on<CreateCommunityEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _CreateCommunity) {
          emit(const _Loading());
          final storageRef = FirebaseStorage.instance.ref();
          final imageRef = storageRef.child(
              "images/${DateTime.now().toString().replaceAll(':', '').replaceAll(' ', '').replaceAll('-', '').replaceAll('.', '')}.jpg");
          if (event.imagePath.isNotEmpty) {
            await imageRef.putFile(
              File(event.imagePath),
            );
          }
          var members = event.members.map((e) => e.userId).toList();
          members.add(await IsarServices().getUserId());
          final data = {
            'communityName': event.communityName,
            'imageUrl': event.imagePath.isNotEmpty
                ? await imageRef.getDownloadURL()
                : "",
            'members': members,
            'groupType': event.groupType,
          };
          final docRef = await FirebaseFirestore.instance
              .collection('communities')
              .add(data);

          final chatDocRef =
              await FirebaseFirestore.instance.collection('chats').add({
            'participants': members,
            'type': 'Group',
            'lastMessage': FieldValue.serverTimestamp(),
            'groupId': docRef.id,
            'groupType': event.groupType
          });
          emit(const _Success());
        } else if (event is _AddMembers) {
          final communitySnapshot = await FirebaseFirestore.instance
              .collection('communities')
              .doc(event.groupId)
              .get();
          final chatSnapShot = await FirebaseFirestore.instance
              .collection('chats')
              .where('groupId', isEqualTo: event.groupId)
              .get();
          List<dynamic> list = communitySnapshot.get('members');
          list.addAll(event.members.map((e) => e.userId).toList());
          await FirebaseFirestore.instance
              .collection('communities')
              .doc(event.groupId)
              .set({'members': list}, SetOptions(merge: true));
          await FirebaseFirestore.instance
              .collection('chats')
              .doc(chatSnapShot.docs.first.id)
              .set({'participants': list}, SetOptions(merge: true));

          emit(const _Success());
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
