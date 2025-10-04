import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/blocs/select_activity_bloc/select_activity_bloc.dart';
import 'package:wellbeings/modules/home_module/widgets/activity_card_widget.dart';
import 'package:wellbeings/modules/meditaion_module/models/meditation_model/meditation_model.dart';

import '../../../utilities/size_config.dart';

class MeditaionTabPage extends StatelessWidget {
  final List<Activity> activities;
  const MeditaionTabPage(this.activities, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      shrinkWrap: true,
      itemCount: activities.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: SizeConfig.isTablet() ? 4 : 2,
          childAspectRatio: .8,
          mainAxisSpacing: 15,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return ActivityCardWidget(
            activityName: activities[index].activityName,
            duration: activities[index].subTitle,
            ontap: (p0) {
              final bloc = BlocProvider.of<SelectActivityBloc>(context);
              bloc.add(SelectActivityEvent.select(
                  activityData: activities, selectedIndex: index));
            },
            imagePath: activities[index].activityImage);
      },
    );
  }
}
