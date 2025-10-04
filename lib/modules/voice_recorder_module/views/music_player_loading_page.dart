import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/voice_recorder_module/widgets/animation_widget.dart';
import 'package:wellbeings/modules/voice_recorder_module/widgets/loading_animator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../utilities/size_config.dart';

class MusicPlayerLoadingPage extends StatefulWidget {
  const MusicPlayerLoadingPage({super.key});

  @override
  State<MusicPlayerLoadingPage> createState() => _MusicPlayerLoadingPageState();
}

class _MusicPlayerLoadingPageState extends State<MusicPlayerLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appLightBlue,
        elevation: 0,
        leading: Center(
          child: Card(
            elevation: 0,
            margin: EdgeInsets.zero,
            color: AppColors.appBGColor,
            child: Container(
              height: SizeConfig.sizeMultiplier * 10,
              width: SizeConfig.sizeMultiplier * 10,
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        title: Text(
          "Classical",
          style: AppTextStyle.titleTextStyle(),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.appLightBlue,
      body: Stack(
        children: [
          ScreenSetter(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let’s get you on track.",
                style: AppTextStyle.commonTextStyle(
                  fontSize: SizeConfig.textMultiplier * 4,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Loading Your Session",
                style:
                    AppTextStyle.commonTextStyle(color: AppColors.colorPrimary),
              ),
              SizedBox(
                height: SizeConfig.sizeMultiplier * 21,
              ),
              const AnimationWidget(),
              SizedBox(
                height: SizeConfig.sizeMultiplier * 30,
              ),
            ],
          )),
          Positioned(
            bottom: SizeConfig.sizeMultiplier * 15,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Text(
                //   "Kingdom Sky",
                //   style: AppTextStyle.commonTextStyle(
                //     color: AppColors.colorPrimary,
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                const LoadingAnimationWidget()
              ],
            ),
          )
        ],
      ),
    ));
  }
}
