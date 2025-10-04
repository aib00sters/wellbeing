import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';

class GoalCardWidget extends StatelessWidget {
  const GoalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: SizeConfig.sizeMultiplier * 11,
      width: (SizeConfig.screenwidth),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.sizeMultiplier * 3.6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            AppColors.colorPrimary,
            AppColors.colorSecondary,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Weekly Goal",
            style: AppTextStyle.commonTextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            "4 / 10",
            style: AppTextStyle.commonTextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
