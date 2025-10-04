import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/utilities/size_config.dart';

class GradientButtonAddFriend extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;
  final VoidCallback onPressed;
  final IconData icon;

  const GradientButtonAddFriend({
    super.key,
    required this.text,
    required this.gradientColors,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.sizeMultiplier * 11,
      width: SizeConfig.screenwidth * 10,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        icon: Image.asset(
          "assets/images/adduser.png",
          width: SizeConfig.sizeMultiplier * 6,
        ),
        label: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class GradientButtonRequested extends StatelessWidget {
  final String text;

  final VoidCallback onPressed;
  final IconData icon;

  const GradientButtonRequested({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.searFieldColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        icon: Image.asset("assets/images/user-check.png",
            width: SizeConfig.sizeMultiplier * 6),
        label: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
