import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/addparticiantbloc/bloc/addparticipant_bloc.dart';
import 'package:wellbeings/modules/doctors_module/views/doctorsslot_booking_page.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

class DoctorsListPage extends StatefulWidget {
  const DoctorsListPage({super.key});

  @override
  State<DoctorsListPage> createState() => _DoctorsListPageState();
}

class _DoctorsListPageState extends State<DoctorsListPage> {
  List<Map<String, dynamic>> doctors = [
    {
      "id": "1",
      "name": "Dr. John Doe",
      "location": "City Hospital",
      "specialization": "Cardiologist",
      "rating": 4.5,
      "image":
          "https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg?w=900&t=st=1708075693~exp=1708076293~hmac=01ab856a0380b6bb5922fc8164dc1cd6cd619921db945b2cabcc0bcc276c8bac"
    },
    {
      "id": "2",
      "name": "Dr. Mary Smith",
      "location": "County Medical Center",
      "specialization": "Pediatrician",
      "rating": 4.8,
      "image":
          "https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?w=900&t=st=1708075589~exp=1708076189~hmac=7c2b4e5a327192951f0aa133ba394ccec68d41eaa0fee2f85db93cf49f255117"
    },
    {
      "id": "3",
      "name": "Dr. Michael Johnson",
      "location": "Community Clinic",
      "specialization": "Dermatologist",
      "rating": 4.3,
      "image":
          "https://img.freepik.com/free-photo/handsome-smiling-medical-professional-examining-with-stethoscope-colored-background_662251-366.jpg?w=740&t=st=1708076674~exp=1708077274~hmac=44772d1dee804097eacda904d6cee3a62778cba31a30945710b5191b882814d4"
    },
    // Add more doctors as needed
  ];
  List<Map<String, dynamic>> recentdoctors = [
    {
      "id": "4",
      "name": "Dr. Jackson",
      "location": "City Hospital",
      "specialization": "Cardiologist",
      "rating": 4.5,
      "image":
          "https://img.freepik.com/premium-photo/surgeon-doctor-adult-man-hospital_1368-506238.jpg?w=900"
    },
    {
      "id": "5",
      "name": "Dr. Angel",
      "location": "County Medical Center",
      "specialization": "Pediatrician",
      "rating": 4.8,
      "image":
          "https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?w=900&t=st=1708075589~exp=1708076189~hmac=7c2b4e5a327192951f0aa133ba394ccec68d41eaa0fee2f85db93cf49f255117"
    },

    // Add more doctors as needed
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddparticipantBloc, AddparticipantState>(
      listener: (context, state) {
        // TODO: implement listener
        state.whenOrNull(sucess: () {
          // if (mounted) {

          final refereshBloc = BlocProvider.of<AddparticipantBloc>(context);
          refereshBloc.add(const AddparticipantEvent.loadparticiapants());
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          // }
        });
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.appBGColor,
          // appBar: AppBar(
          // elevation: 0,
          // backgroundColor: AppColors.appBGColor,
          // iconTheme: const IconThemeData(color: AppColors.appBlack),
          // title: Text(
          //   "Doctors page",
          //   style: AppTextStyle.boldTitleStyle(),
          // ),
          // centerTitle: true,
          // actions: const [
          //   // IconButton(
          //   //   onPressed: () {},
          //   //   icon: const Icon(
          //   //     Icons.more_vert,
          //   //   ),
          //   // )
          // ],
          // ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.screenheight * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: SizeConfig.screenwidth * .8,
                    height: SizeConfig.screenheight * .05,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recent",
                  style: AppTextStyle.boldTitleStyle(),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(216, 243, 254, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: ListView.builder(
                    itemCount: recentdoctors.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => DoctorsSlotPage(
                            //     doctor: recentdoctors[index],
                            //   ),

                            // ));
                            dialogbox(
                                image: recentdoctors[index]["image"],
                                name: recentdoctors[index]["name"],
                                id: recentdoctors[index]["id"]);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(216, 243, 254, 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                            child: Container(
                              width: SizeConfig.screenwidth,
                              height: SizeConfig.screenheight * .12,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 165, 203, 233)),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[100],
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: SizeConfig.sizeMultiplier * 10,
                                    backgroundColor: AppColors.colorSecondary,
                                    foregroundColor: AppColors.colorSecondary,

                                    child: CircleAvatar(
                                      radius: SizeConfig.sizeMultiplier *
                                          9.5, // Adjust the inner radius as needed
                                      //backgroundColor: Colors.white,
                                      backgroundImage:
                                          NetworkImage(doctors[index]["image"]),
                                      // child: const Icon(
                                      //   Icons.person,
                                      //   color: Colors.blue,
                                      // ),
                                    ), // Border color
                                    // You can also use 'borderColor' instead of 'foregroundColor' in newer Flutter versions
                                    // borderColor: Colors.blue,
                                    // borderWidth: 2.0, // Set border width
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          recentdoctors[index]["name"],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          recentdoctors[index]["location"],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          recentdoctors[index]
                                              ["specialization"],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              // Container(
              //   height: SizeConfig.screenheight*.05,
              //   color: const Color.fromARGB(255, 165, 203, 233) ,
              // ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(244, 251, 255, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: ListView.builder(
                    itemCount: doctors.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => DoctorsSlotPage(
                          //     doctor: doctors[index],
                          //   ),
                          // ));
                          dialogbox(
                              image: doctors[index]["image"],
                              name: doctors[index]["name"],
                              id: doctors[index]["id"]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: SizeConfig.screenwidth,
                            height: SizeConfig.screenheight * .12,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 165, 203, 233)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: SizeConfig.sizeMultiplier * 10,
                                  backgroundColor: AppColors.colorSecondary,
                                  foregroundColor: AppColors.colorSecondary,

                                  child: CircleAvatar(
                                    radius: SizeConfig.sizeMultiplier *
                                        9.5, // Adjust the inner radius as needed
                                    //backgroundColor: Colors.white,
                                    backgroundImage:
                                        NetworkImage(doctors[index]["image"]),
                                    // child: const Icon(
                                    //   Icons.person,
                                    //   color: Colors.blue,
                                    // ),
                                  ), // Border color
                                  // You can also use 'borderColor' instead of 'foregroundColor' in newer Flutter versions
                                  // borderColor: Colors.blue,
                                  // borderWidth: 2.0, // Set border width
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        doctors[index]["name"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        doctors[index]["location"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        doctors[index]["specialization"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  dialogbox({required String image, required String name, required String id}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Connect with Doctor'),
          content: const Text('Do you want to connect with this doctor?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                // Add your logic here to connect with the doctor
                final participantselectbloc =
                    BlocProvider.of<AddparticipantBloc>(context);
                final data =
                    Item(name: name, imageUrl: image, type: "doctor", id: id);
                participantselectbloc
                    .add(AddparticipantEvent.addparticipant(item: data));

                // Navigator.of(context).pop();
                // Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
