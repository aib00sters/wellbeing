import 'package:flutter/material.dart';

import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../../widgets/button_widget.dart';

class LoadingAnimationWidget extends StatefulWidget {
  const LoadingAnimationWidget({super.key});

  @override
  State<LoadingAnimationWidget> createState() => _LoadingAnimationWidgetState();
}

class _LoadingAnimationWidgetState extends State<LoadingAnimationWidget>
    with TickerProviderStateMixin {
  late AnimationController controllerScale;
  late Animation<double> animationScale;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (controllerScale.isCompleted) {
          AppNavigator.pushReplacementNamed("/voiceRecorderPage");
        }
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Card(
                  elevation: 0,
                  shape: const StadiumBorder(),
                  color: const Color(0XFFb6d7ed),
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    height: SizeConfig.sizeMultiplier * 11,
                    width: (SizeConfig.widthMultiplier * 91.6),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: animationScale.value,
                  child: const GradientButton(
                    text: "",
                    onTap: null,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: Text(
                      controllerScale.isCompleted
                          ? "Enter Studio"
                          : "Loading...",
                      style: AppTextStyle.titleTextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controllerScale.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controllerScale = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    animationScale =
        Tween<double>(begin: 30, end: SizeConfig.widthMultiplier * 91.6)
            .animate(controllerScale)
          ..addListener(() {
            setState(() {
              if (controllerScale.isCompleted) {}
            });
          });
    controllerScale.forward();
    super.initState();
  }
}
