import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_functions.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../home_module/widgets/activity_card_widget.dart';

class ListViewWidget extends StatelessWidget {
  final String title;
  const ListViewWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.titleTextStyle(),
            ),
            TextButton(
              onPressed: () {},
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
                activityName: "Coral Cost",
                duration: "Jerome Flyer",
                imagePath: getImagePath(index + 2),
              );
            },
          ),
        ),
      ],
    );
  }
}
