import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/voice_activities_module/widgets/tab_page_view.dart';
import 'package:wellbeings/utilities/app_styles.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            child: TabBar(
                indicatorWeight: 2,
                automaticIndicatorColorAdjustment: true,
                isScrollable: true,
                padding: EdgeInsets.zero,
                controller: tabController,
                unselectedLabelColor: const Color(0xff908788),
                labelColor: AppColors.colorPrimary,
                labelStyle: AppTextStyle.commonTextStyle(),
                indicatorPadding: const EdgeInsets.only(top: 36, bottom: 5),
                indicator: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.colorPrimary,
                ),
                tabs: [
              for (int i = 0; i < 5; i++) ...[
                const Tab(
                  text: "All activities",
                )
              ]
            ])),
        Expanded(
          child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [for (var i = 0; i < 5; i++) const TabPageView()]),
        )
      ],
    );
  }

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }
}
