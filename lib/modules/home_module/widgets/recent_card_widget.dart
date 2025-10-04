import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/constants/app_colors.dart';

import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';

typedef OnTap<T> = Function(T);

class RecentActivityCardWidget extends StatelessWidget {
  final String activityName;
  final String duration;
  final OnTap ontap;
  final String imagePath;
  final String type;
  const RecentActivityCardWidget({
    super.key,
    required this.activityName,
    required this.duration,
    required this.ontap,
    required this.imagePath,
    required this.type,
  });
  @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ontap(true),
      child: ListTile(
        // tileColor: Colors.blue,
        leading: Container(
          width: SizeConfig.screenwidth *
              .15, // Set the width to your desired size
          height: SizeConfig.screenheight * .15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(87, 180, 214, 1),
                Color.fromRGBO(53, 204, 198, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: type == "paint"
              ? const Icon(Icons.brush, color: Colors.white)
              : type == "video"
                  ? const Icon(Icons.video_collection_outlined,
                      color: Colors.white)
                  : const Icon(Icons.music_note, color: Colors.white),
        ),
        title: Text(
          type,
          style: AppTextStyle.boldTitleStyle(
              color: const Color.fromRGBO(62, 137, 156, 1)),
        ),
        subtitle: Text(duration),
      ),
    );
  }

  // Card(
  //   color: AppColors.colorSecondary,
  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  //   child: Stack(
  //     children: [
  //       Positioned(
  //         top: 0,
  //         bottom: 0,
  //         left: 0,
  //         right: 0,
  //         child: SizedBox(
  //           height: SizeConfig.sizeMultiplier * 53,
  //           width: SizeConfig.sizeMultiplier * 38,
  //           // child: Image.network(imagePath),
  //         ),
  //       ),
  //       Positioned(
  //         bottom: 10,
  //         right: 0,
  //         left: 0,
  //         child: Center(
  //           child: Card(
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(8)),
  //             elevation: 0,
  //             margin: EdgeInsets.zero,
  //             child: SizedBox(
  //               height: SizeConfig.sizeMultiplier * 16,
  //               width: SizeConfig.sizeMultiplier * 31,
  //               child: Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 8),
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       activityName,
  //                       maxLines: 2,
  //                       textAlign: TextAlign.start,
  //                       overflow: TextOverflow.ellipsis,
  //                       style: AppTextStyle.titleTextStyle(
  //                         fontSize: SizeConfig.textMultiplier * 2.8,
  //                       ),
  //                     ),
  //                     const SizedBox(
  //                       height: 2,
  //                     ),
  //                     if (duration.isNotEmpty)
  //                       Text(
  //                         duration,
  //                         textAlign: TextAlign.start,
  //                         style: TextStyle(
  //                           height: 1.2,
  //                           fontWeight: FontWeight.w400,
  //                           fontSize: SizeConfig.textMultiplier * 2.4,
  //                           color: const Color(0XFF908788),
  //                         ),
  //                       ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       )
  //     ],
  //   ),
  // ),
}
