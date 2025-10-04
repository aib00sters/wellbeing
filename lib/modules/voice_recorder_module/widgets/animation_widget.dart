import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_assets.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with TickerProviderStateMixin {
  late AnimationController controllerTranslate;
  late AnimationController controllerRotate;

  late Animation<double> animationTranslate;
  late Animation<double> animationRotate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(0, animationTranslate.value),
            child: Card(
              elevation: 0,
              color: Colors.white,
              margin: EdgeInsets.zero,
              shape: const StadiumBorder(),
              child: SizedBox(
                height: SizeConfig.sizeMultiplier * 80,
                width: SizeConfig.sizeMultiplier * 80,
                child: Card(
                  elevation: 0,
                  color: AppColors.colorPrimary,
                  margin: const EdgeInsets.all(10),
                  shape: const StadiumBorder(),
                  child: Card(
                    elevation: 0,
                    margin: const EdgeInsets.all(10),
                    shape: const StadiumBorder(),
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.colorPrimary,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.colorPrimary,
                            Color(0XFF43c0cf),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Center(
                        child: Card(
                          elevation: 0,
                          color: const Color(0XFF75c7de),
                          margin: const EdgeInsets.all(10),
                          shape: const StadiumBorder(),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: SizeConfig.sizeMultiplier * 35,
                                width: SizeConfig.sizeMultiplier * 35,
                              ),
                              RotationTransition(
                                turns: animationRotate,
                                child: Image.asset(
                                  AppAssets.diceImage,
                                  height: SizeConfig.sizeMultiplier * 35,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controllerTranslate.dispose();
    controllerRotate.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controllerTranslate = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    controllerRotate = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 1,
        ));
    animationTranslate =
        Tween<double>(begin: -SizeConfig.heightMultiplier * 60, end: 0)
            .animate(controllerTranslate)
          ..addListener(() {
            setState(() {
              if (controllerTranslate.isCompleted) {
                controllerRotate.forward();
              }
            });
          });
    animationRotate = CurvedAnimation(
      parent: controllerRotate,
      curve: Curves.easeIn,
    );
    controllerTranslate.forward();
    super.initState();
  }
}
