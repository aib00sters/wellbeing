import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/screen_sizer.dart';
import '../../../utilities/size_config.dart';
import '../widgets/meditation_tab_bar.dart';

class ActivityListPage extends StatefulWidget {
  final String catgory;
  const ActivityListPage({
    super.key,
    required this.catgory,
  });

  @override
  State<ActivityListPage> createState() => _ActivityListPageState();
}

class _ActivityListPageState extends State<ActivityListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appBGColor,
          iconTheme: const IconThemeData(color: AppColors.appBlack),
          title: Text(widget.catgory, style: AppTextStyle.commonTextStyle()),
          centerTitle: true,
          actions: const [
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.more_vert,
            //   ),
            // )
          ],
        ),
        body: ScreenSetter(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.sizeMultiplier * 2.8),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: MeditationTabBar(
                  category: widget.catgory,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
