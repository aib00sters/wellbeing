import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/app_navigator.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_functions.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import 'activity_card_widget.dart';

class VoiceActivitiesWidget extends StatelessWidget {
  const VoiceActivitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Voice Activities",
              style: AppTextStyle.titleTextStyle(),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "See All",
                style: AppTextStyle.titleTextStyle(
                  fontSize: SizeConfig.textMultiplier * 2.8,
                  color: AppColors.colorPrimary,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.sizeMultiplier * 55,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast,
            ),
            itemCount: 4,
            padding: const EdgeInsets.symmetric(vertical: 5),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ActivityCardWidget(
                ontap: (p0) {
                  AppNavigator.pushNamed("/musicLoadingPage");
                },
                activityName: "Classical",
                duration: "2/10",
                imagePath: getImagePath(index),
              );
            },
          ),
        ),
      ],
    );
  }
}
