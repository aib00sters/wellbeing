import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
class AichatBotAddPage extends StatefulWidget {
  const AichatBotAddPage({super.key});

  @override
  State<AichatBotAddPage> createState() => _AichatBotAddPageState();
}

class _AichatBotAddPageState extends State<AichatBotAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.appBGColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appBGColor,
          iconTheme: const IconThemeData(color: AppColors.appBlack),
          title: const Text("Ai chat bot add page"),
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
        body: ScreenSetter(child:
            Column(
              children: [
                
              ],
            )
         ),

    );
  }
}