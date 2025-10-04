import 'package:flutter/material.dart';
import 'package:wellbeings/modules/voice_activities_module/widgets/list_view_widget.dart';

class TabPageView extends StatelessWidget {
  const TabPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: const [
        ListViewWidget(title: "All Music"),
        SizedBox(height: 10),
        ListViewWidget(title: "Classical"),
        SizedBox(height: 10),
        ListViewWidget(title: "Motivational"),
        SizedBox(height: 10),
      ],
    );
  }
}
