import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/chat_module/bloc/paint_gallery_bloc/paint_gallery_bloc.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../bloc/send_message_bloc/send_message_bloc.dart';

class PaintingGalleryPage extends StatelessWidget {
  const PaintingGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.appLightBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appBGColor,
        title: Text(
          "Your paintings",
          style: AppTextStyle.boldTitleStyle(),
        ),
      ),
      floatingActionButton: BlocBuilder<PaintGalleryBloc, PaintGalleryState>(
        builder: (context, state) {
          return Visibility(
            visible: state.whenOrNull(
                  success: (paintingsList, selectedIndexes, chatId, recieverId,
                          groupName) =>
                      selectedIndexes.isNotEmpty,
                ) ??
                false,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 10),
              child: FloatingActionButton(
                onPressed: () {
                  state.whenOrNull(success: (paintingsList, selectedIndexes,
                      chatId, recieverId, groupName) {
                    final sendMsgBloc =
                        BlocProvider.of<SendMessageBloc>(context);
                    for (var element in selectedIndexes) {
                      sendMsgBloc.add(SendMessageEvent.uploadFile(
                          groupName: groupName,
                          receiverId: recieverId,
                          filePath: paintingsList[element].filepath!,
                          type: 'image',
                          chatId: chatId));
                    }
                    Navigator.pop(context);
                  });
                },
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          );
        },
      ),
      body: ScreenSetter(
        child: BlocBuilder<PaintGalleryBloc, PaintGalleryState>(
          builder: (context, state) {
            return state.when(
              error: (msg) {
                return const SizedBox();
              },
              loading: () {
                return const SizedBox();
              },
              success: (paintingsList, selectedIndexes, chatId, recieverId,
                  groupName) {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: paintingsList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.file(
                            File(paintingsList[index].filepath!),
                            fit: BoxFit.cover,
                          ),
                          InkWell(
                            onTap: () {
                              final bloc =
                                  BlocProvider.of<PaintGalleryBloc>(context);
                              bloc.add(PaintGalleryEvent.selectPainting(
                                  paintingsList: paintingsList,
                                  chatId: chatId,
                                  recieverId: recieverId,
                                  selectedIndexes: selectedIndexes,
                                  selectedIndex: index));
                            },
                            child: Visibility(
                              visible: selectedIndexes.contains(index),
                              child: Container(
                                color: const Color.fromARGB(127, 97, 171, 221),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 50,
                                    color: AppColors.statusBarColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              initial: () {
                return const SizedBox();
              },
            );
          },
        ),
      ),
    ));
  }
}
