import 'package:flutter/material.dart';
import 'package:wellbeings/modules/doctors_module/views/bookingorderlistPage.dart';
import 'package:wellbeings/modules/doctors_module/views/doctors_list_module.dart';
import 'package:wellbeings/utilities/size_config.dart';

class DoctorsMainPage extends StatelessWidget {
  const DoctorsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          //title: Text(''),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(height: SizeConfig.screenheight * .05, text: 'Doctors list'),
              Tab(height: SizeConfig.screenheight * .05, text: 'Slot Bookings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [DoctorsListPage(), MyListViewPage()],
        ),
      ),
    );
  }
}
