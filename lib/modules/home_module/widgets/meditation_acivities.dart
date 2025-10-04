import 'package:flutter/material.dart';
import 'package:wellbeings/modules/home_module/widgets/activity_card_widget.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_functions.dart';
import '../../../utilities/app_styles.dart';

class MeditationActivities extends StatelessWidget {
  const MeditationActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Meditation",
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
                ontap: (p0) {},
                activityName: "Be grateful",
                duration: "8 min",
                imagePath: getImagePath(index + 1),
              );
            },
          ),
        ),
      ],
    );
  }
}
