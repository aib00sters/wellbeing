import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/voice_activities_module/widgets/goal_card.dart';
import 'package:wellbeings/modules/voice_activities_module/widgets/tab_bar_widget.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../utilities/size_config.dart';

class VoiceActivitiesPage extends StatefulWidget {
  const VoiceActivitiesPage({super.key});

  @override
  State<VoiceActivitiesPage> createState() => _VoiceActivitiesPageState();
}

class _VoiceActivitiesPageState extends State<VoiceActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appBGColor,
          iconTheme: const IconThemeData(color: AppColors.appBlack),
          title: Text(
            'Voice Activities',
            style: AppTextStyle.titleTextStyle(),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            )
          ],
        ),
        body: ScreenSetter(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.sizeMultiplier * 2.8),
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                GoalCardWidget(),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: TabBarWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
