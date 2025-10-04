import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wellbeings/modules/chat_module/bloc/paint_gallery_bloc/paint_gallery_bloc.dart';
import 'package:wellbeings/modules/chat_module/views/callpage.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/firebase_services.dart';

import '../../../constants/app_colors.dart';
import '../bloc/chat_bloc/chat_bloc.dart';
import '../bloc/send_message_bloc/send_message_bloc.dart';

class ChatBoxWidget extends StatefulWidget {
  final TextEditingController msgController;
  final String chattype;

  const ChatBoxWidget({
    super.key,
    required this.msgController,
    required this.chattype,
  });

  @override
  State<ChatBoxWidget> createState() => _ChatBoxWidgetState();
}

class _ChatBoxWidgetState extends State<ChatBoxWidget> {
  bool showMediaCard = false;
  final ImagePicker imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Column(
          children: [
            Visibility(
              visible: showMediaCard,
              child: Card(
                color: const Color(0xFFF5F5F5),
                elevation: 0,
                margin: const EdgeInsets.symmetric(horizontal: 27),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          state.whenOrNull(
                            success: (chatId, recieverData, chatType, userId,
                                userName) async {
                              final sendMsgBloc =
                                  BlocProvider.of<SendMessageBloc>(context);
                              var img = await imagePicker.pickImage(
                                  source: ImageSource.camera);
                              if (img != null) {
                                sendMsgBloc.add(SendMessageEvent.uploadFile(
                                    receiverId: recieverData.userId,
                                    filePath: img.path,
                                    groupName: chatType == "Group"
                                        ? recieverData.name
                                        : null,
                                    type: 'image',
                                    chatId: chatId));
                              }
                            },
                          );
                        },
                        child: const Card(
                          color: AppColors.appWhite,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          elevation: 1,
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.camera_alt_rounded,
                              color: AppColors.colorPrimary,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          state.whenOrNull(
                            success: (chatId, recieverData, chatType, userId,
                                userName) async {
                              final sendMsgBloc =
                                  BlocProvider.of<SendMessageBloc>(context);
                              var img = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              if (img != null) {
                                sendMsgBloc.add(SendMessageEvent.uploadFile(
                                    receiverId: recieverData.userId,
                                    groupName: chatType == "Group"
                                        ? recieverData.name
                                        : null,
                                    filePath: img.path,
                                    type: 'image',
                                    chatId: chatId));
                              }
                            },
                          );
                        },
                        child: const Card(
                          color: AppColors.appWhite,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          elevation: 1,
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.image_rounded,
                              color: AppColors.colorPrimary,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          state.whenOrNull(
                            success: (chatId, recieverData, chatType, userId,
                                userName) {
                              final paintGalleryBloc =
                                  BlocProvider.of<PaintGalleryBloc>(context);
                              paintGalleryBloc.add(
                                  PaintGalleryEvent.fetchPaintings(
                                      groupName: chatType == "Group"
                                          ? recieverData.name
                                          : null,
                                      chatId: chatId,
                                      recieverId: recieverData.userId));
                              AppNavigator.pushNamed('/paintGallery');
                            },
                          );
                          setState(() {
                            showMediaCard = false;
                          });
                        },
                        child: const Card(
                          color: AppColors.appWhite,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          elevation: 1,
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.brush_rounded,
                              color: AppColors.colorPrimary,
                              size: 28,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Card(
              color: const Color(0XFFF2F2F2),
              margin: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27)),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width,
                    minHeight: 55,
                    maxHeight: 100),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 5,
                    top: 4,
                    bottom: 4,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // const Flexible(
                      //   flex: 1,
                      //   fit: FlexFit.tight,
                      //   child: Icon(
                      //     Icons.emoji_emotions,
                      //   ),
                      // ),
                      Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: TextFormField(
                          onTap: () {
                            if (showMediaCard) {
                              setState(() {
                                showMediaCard = !showMediaCard;
                              });
                            }
                          },
                          controller: widget.msgController,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: const InputDecoration.collapsed(
                              hintText: "Type a message"),
                        ),
                      ),
                      widget.chattype != "Group"
                          ? Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: 20,
                                child: Center(
                                  child: InkWell(
                                    onTap: () async {
                                      await FireBaseServices().sendNotification(
                                        type: 'call-${state.whenOrNull(
                                              success: (chatId,
                                                      recieverData,
                                                      chatType,
                                                      userId,
                                                      userName) =>
                                                  userId,
                                            ) ?? ""}-${state.whenOrNull(
                                              success: (chatId,
                                                      recieverData,
                                                      chatType,
                                                      userId,
                                                      userName) =>
                                                  userName,
                                            ) ?? ""}-audio',
                                        title: "incomming call",
                                        body: state.whenOrNull(
                                              success: (chatId,
                                                      recieverData,
                                                      chatType,
                                                      userId,
                                                      userName) =>
                                                  userName,
                                            ) ??
                                            "",
                                        fcmToken: state.whenOrNull(
                                              success: (chatId,
                                                      recieverData,
                                                      chatType,
                                                      userId,
                                                      userName) =>
                                                  recieverData.fcmToken,
                                            ) ??
                                            "",
                                      );
                                      Future.delayed(Duration.zero, () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) => CallPage(
                                        //       callID: state.whenOrNull(
                                        //             success: (chatId,
                                        //                     recieverData,
                                        //                     chatType,
                                        //                     userId,
                                        //                     userName) =>
                                        //                 userId,
                                        //           ) ??
                                        //           "",
                                        //       callername: state.whenOrNull(
                                        //             success: (chatId,
                                        //                     recieverData,
                                        //                     chatType,
                                        //                     userId,
                                        //                     userName) =>
                                        //                 recieverData.name,
                                        //           ) ??
                                        //           "",
                                        //       type: 'audio',
                                        //     ),
                                        //   ),
                                        // );
                                      });
                                    },
                                    child: const Icon(Icons.call),
                                  ),
                                ),
                              ))
                          : const SizedBox(),
                      widget.chattype != "Group"
                          ? Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: 20,
                                child: Center(
                                    child: InkWell(
                                        onTap: () async {
                                          await FireBaseServices()
                                              .sendNotification(
                                            type: 'call-${state.whenOrNull(
                                                  success: (chatId,
                                                          recieverData,
                                                          chatType,
                                                          userId,
                                                          userName) =>
                                                      userId,
                                                ) ?? ""}-${state.whenOrNull(
                                                  success: (chatId,
                                                          recieverData,
                                                          chatType,
                                                          userId,
                                                          userName) =>
                                                      userName,
                                                ) ?? ""}-video',
                                            title: "incomming call",
                                            body: state.whenOrNull(
                                                  success: (chatId,
                                                          recieverData,
                                                          chatType,
                                                          userId,
                                                          userName) =>
                                                      userName,
                                                ) ??
                                                "",
                                            fcmToken: state.whenOrNull(
                                                  success: (chatId,
                                                          recieverData,
                                                          chatType,
                                                          userId,
                                                          userName) =>
                                                      recieverData.fcmToken,
                                                ) ??
                                                "",
                                          );
                                          Future.delayed(Duration.zero, () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //     builder: (context) => CallPage(
                                            //       callID: state.whenOrNull(
                                            //             success: (chatId,
                                            //                     recieverData,
                                            //                     chatType,
                                            //                     userId,
                                            //                     userName) =>
                                            //                 userId,
                                            //           ) ??
                                            //           "",
                                            //       callername: state.whenOrNull(
                                            //             success: (chatId,
                                            //                     recieverData,
                                            //                     chatType,
                                            //                     userId,
                                            //                     userName) =>
                                            //                 recieverData.name,
                                            //           ) ??
                                            //           "",
                                            //       type: 'video',
                                            //     ),
                                            //   ),
                                            // );
                                          });
                                        },
                                        child: const Icon(Icons.video_call))),
                              ),
                            )
                          : const SizedBox(),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: SizedBox(
                          height: 50,
                          child: Center(
                            child: BlocBuilder<ChatBloc, ChatState>(
                              builder: (context, state) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      showMediaCard = !showMediaCard;
                                    });
                                  },
                                  child: const Card(
                                    color: AppColors.appWhite,
                                    margin: EdgeInsets.zero,
                                    elevation: 1,
                                    shape: StadiumBorder(),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.attachment,
                                        color: AppColors.colorPrimary,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: SizedBox(
                          height: 40,
                          child: Center(
                            child: InkWell(
                              onTap: () async {
                                state.whenOrNull(
                                  success: (chatId, recieverData, chatType,
                                      userId, userName) {
                                    if (widget.msgController.text
                                        .toString()
                                        .trim()
                                        .isNotEmpty) {
                                      final sendMsgBloc =
                                          BlocProvider.of<SendMessageBloc>(
                                              context);
                                      sendMsgBloc.add(
                                          SendMessageEvent.sendMessage(
                                              groupName: chatType == "Group"
                                                  ? recieverData.name
                                                  : null,
                                              receiverToken:
                                                  recieverData.userId,
                                              receiverId: recieverData.userId,
                                              message:
                                                  widget.msgController.text,
                                              chatId: chatId));

                                      widget.msgController.clear();
                                    }
                                  },
                                );
                              },
                              child: const Card(
                                color: Color.fromARGB(255, 0, 0, 0),
                                margin: EdgeInsets.zero,
                                elevation: 0,
                                shape: StadiumBorder(),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
