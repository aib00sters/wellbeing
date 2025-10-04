import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../utilities/size_config.dart';

class MessageItemWidget extends StatelessWidget {
  final String type;
  final String? text;
  final String? localPath;
  final String? fileUrl;
  final String status;
  final bool isSentMessage;
  final bool seen;
  final String sentTime;
  final BuildContext context;
  final String? senderName;

  const MessageItemWidget({
    super.key,
    this.fileUrl,
    required this.type,
    required this.status,
    this.localPath,
    this.text,
    required this.seen,
    required this.isSentMessage,
    required this.sentTime,
    required this.context,
    this.senderName,
  });

  @override
  Widget build(BuildContext context) {
    return (!isSentMessage && status == 'loading')
        ? const SizedBox()
        : Row(
            mainAxisAlignment:
                isSentMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: isSentMessage ? 4 : 2,
                    bottom: isSentMessage ? 2 : 4),
                color: isSentMessage
                    ? const Color(0XFFdbfaff)
                    : AppColors.appWhite,
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    constraints: BoxConstraints(
                      maxWidth: SizeConfig.sizeMultiplier * 70,
                      minWidth: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                            visible: senderName != null,
                            child: Text(
                              senderName ?? "",
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.colorSecondary),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            getWidget(type, fileUrl, localPath, status, text),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (isSentMessage)
                                  Image.asset(
                                    AppAssets.doubleTickImage,
                                    height: 12,
                                    color: seen ? Colors.blue : Colors.grey,
                                  ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  sentTime,
                                  style: const TextStyle(
                                    color: Color(0xFFA4BDC3),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          );
  }

  getWidget(String type, String? fileUrl, String? localPath, String status,
      String? text) {
    switch (type) {
      case 'text':
        {
          return Text(
            text ?? "",
            style: const TextStyle(
                color: Color.fromARGB(255, 74, 82, 83),
                fontSize: 16,
                height: 1.2),
          );
        }
      case 'image':
        {
          if (status == 'loading') {
            return SizedBox(
              height: SizeConfig.sizeMultiplier * 70,
              width: SizeConfig.sizeMultiplier * 70,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Center(
                    child: Image.file(
                      File(
                        localPath!,
                      ),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    // Clip it cleanly.
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const Center(
                    child: CircularProgressIndicator(
                        color: AppColors.colorSecondary),
                  )
                ],
              ),
            );
          } else {
            return ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: SizeConfig.sizeMultiplier * 70,
                  maxWidth: SizeConfig.sizeMultiplier * 70,
                ),
                child: InkWell(
                    onTap: () {
                      showDialog(
                        barrierColor: const Color.fromARGB(210, 0, 0, 0),
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.transparent,
                            contentPadding: EdgeInsets.zero,
                            content: CachedNetworkImage(imageUrl: fileUrl),
                            titlePadding: const EdgeInsets.only(bottom: 10),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 30,
                                    ))
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: CachedNetworkImage(imageUrl: fileUrl!)));
          }
        }
    }
  }
}
