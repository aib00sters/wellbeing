// import 'package:date_picker_timeline/date_picker_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:time_slot/model/time_slot_Interval.dart';
// import 'package:time_slot/time_slot_from_interval.dart';
// import 'package:wellbeings/constants/app_colors.dart';
// import 'package:wellbeings/utilities/app_styles.dart';
// import 'package:wellbeings/utilities/size_config.dart';

// class DoctorsSlotPage extends StatefulWidget {
//   const DoctorsSlotPage({super.key, required this.doctor});
//   final Map<String, dynamic> doctor;
//   @override
//   State<DoctorsSlotPage> createState() => _DoctorsSlotPageState();
// }

// class _DoctorsSlotPageState extends State<DoctorsSlotPage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     print(widget.doctor["image"]);
//     super.initState();
//   }

//   DateTime? _selectedValue;
//   DateTime selectTime = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: AppColors.appBGColor,
//         iconTheme: const IconThemeData(color: AppColors.appBlack),
//         // title: Text(
//         //   "Doctors page",
//         //   style: AppTextStyle.boldTitleStyle(),
//         // ),
//         centerTitle: true,
//         actions: const [
//           // IconButton(
//           //   onPressed: () {},
//           //   icon: const Icon(
//           //     Icons.more_vert,
//           //   ),
//           // )
//         ],
//       ),
//       body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         Container(
//           decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 topRight: Radius.circular(10),
//               )),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               width: SizeConfig.screenwidth,
//               height: SizeConfig.screenheight * .1,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.white,
//               ),
//               child: Row(
//                 children: [
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   CircleAvatar(
//                     radius: SizeConfig.sizeMultiplier * 10,
//                     backgroundColor: AppColors.colorSecondary,
//                     foregroundColor: AppColors.colorSecondary,
//                     child: CircleAvatar(
//                       radius: SizeConfig.sizeMultiplier *
//                           9.5, // Adjust the inner radius as needed
//                       backgroundColor: Colors.white,
//                       // child: const Icon(
//                       //   Icons.person,
//                       //   color: Colors.blue,
//                       // ),
//                       backgroundImage: NetworkImage(widget.doctor["image"]),
//                       //   backgroundImage: const NetworkImage(
//                       //       "https://img.freepik.com/free-photo/handsome-smiling-medical-professional-examining-with-stethoscope-colored-background_662251-366.jpg?w=740&t=st=1708076674~exp=1708077274~hmac=44772d1dee804097eacda904d6cee3a62778cba31a30945710b5191b882814d4"),
//                     ), // Border color
//                     // You can also use 'borderColor' instead of 'foregroundColor' in newer Flutter versions
//                     // borderColor: Colors.blue,
//                     // borderWidth: 2.0, // Set border width
//                   ),
//                   const SizedBox(
//                     width: 15,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         widget.doctor["name"],
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//                       Text(
//                         widget.doctor["location"],
//                         style: const TextStyle(
//                           color: Colors.black,
//                           //fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                       Text(
//                         widget.doctor["specialization"],
//                         style: const TextStyle(
//                           color: Colors.black,
//                           //fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Text("Select date",
//               style: AppTextStyle.boldTitleStyle(
//                   fontSize: SizeConfig.textMultiplier * 4,
//                   color: const Color.fromARGB(255, 72, 131, 156))),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: DatePicker(
//             height: SizeConfig.screenheight * .13,
//             DateTime.now(),
//             initialSelectedDate: DateTime.now(),
//             daysCount: 7,
//             selectionColor: const Color.fromARGB(255, 165, 203, 233),
//             selectedTextColor: Colors.white,
//             onDateChange: (date) {
//               // New date selected
//               setState(() {
//                 _selectedValue = date;
//               });
//             },
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Text("Select Slot",
//               style: AppTextStyle.boldTitleStyle(
//                   fontSize: SizeConfig.textMultiplier * 4,
//                   color: const Color.fromARGB(255, 72, 131, 156))),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: TimesSlotGridViewFromInterval(
//             selectedColor: const Color.fromARGB(255, 165, 203, 233),
//             locale: "en",
//             initTime: selectTime,
//             crossAxisCount: 4,
//             timeSlotInterval: const TimeSlotInterval(
//               start: TimeOfDay(hour: 10, minute: 00),
//               end: TimeOfDay(hour: 22, minute: 0),
//               interval: Duration(hours: 1, minutes: 0),
//             ),
//             onChange: (value) {
//               setState(() {
//                 selectTime = value;
//               });
//             },
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: SizeConfig.screenwidth * .8,
//               height: SizeConfig.screenheight * .05,
//               child: InkWell(
//                 onTap: () {
//                   Navigator.pushNamed(
//                     context,
//                     '/doctorslist',
//                   );
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 165, 203, 233),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.userDoctor,
//                           color: Colors.white,
//                           size: SizeConfig.sizeMultiplier * 6,
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           "Confirm Slot",
//                           style:
//                               AppTextStyle.largeTitleStyle(color: Colors.white),
//                         )
//                       ]),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ]),
//     ));
//   }
// }
