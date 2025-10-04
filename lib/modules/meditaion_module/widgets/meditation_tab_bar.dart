import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/meditaion_module/blocs/activity_list_bloc/activity_list_bloc.dart';
import 'package:wellbeings/modules/meditaion_module/widgets/meditation_tab_page.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';

class MeditationTabBar extends StatefulWidget {
  final String category;
  const MeditationTabBar({
    super.key,
    required this.category,
  });

  @override
  State<MeditationTabBar> createState() => _MeditationTabBarState();
}

class _MeditationTabBarState extends State<MeditationTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ActivityListBloc()
        ..add(ActivityListEvent.fetchList(category: widget.category)),
      child: BlocConsumer<ActivityListBloc, ActivityListState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (meditationListModel, selectedIndex) {
              tabController = TabController(
                  length: meditationListModel.result.categories.length,
                  vsync: this);
            },
          );
        },
        builder: (context, state) {
          return state.whenOrNull(
                error: (errorMessage) {
                  return Center(
                    child: Text(
                      "No activities found",
                      style: AppTextStyle.largeTitleStyle(),
                    ),
                  );
                },
                success: (meditationListModel, selectedIndex) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              indicatorPadding:
                                  const EdgeInsets.only(top: 36, bottom: 5),
                              indicator: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.colorPrimary,
                              ),
                              tabs: [
                            for (int i = 0;
                                i <
                                    meditationListModel
                                        .result.categories.length;
                                i++) ...[
                              Tab(
                                text: meditationListModel
                                    .result.categories[i].categoryName,
                              )
                            ]
                          ])),
                      Expanded(
                        child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            controller: tabController,
                            children: [
                              for (var i = 0;
                                  i <
                                      meditationListModel
                                          .result.categories.length;
                                  i++)
                                MeditaionTabPage(meditationListModel
                                    .result.categories[i].activities)
                            ]),
                      )
                    ],
                  );
                },
              ) ??
              const Center(
                child: CircularProgressIndicator(),
              );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
