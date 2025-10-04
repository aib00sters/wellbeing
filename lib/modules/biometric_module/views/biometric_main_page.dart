import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wellbeings/modules/biometric_module/heartpage.dart';
import 'package:wellbeings/utilities/size_config.dart';

class DailySteps extends StatelessWidget {
  const DailySteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //  const Color.fromRGBO(235, 249, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        //  const Color.fromRGBO(235, 249, 255, 1),
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Health",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: SizeConfig.sizeMultiplier * 32,
                  lineWidth: 15,
                  percent: 0.7,
                  progressColor: const Color.fromRGBO(85, 185, 213, 1),
                  center: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(
                        color: const Color.fromRGBO(218, 244, 255, 1),
                        width: SizeConfig.screenwidth * .1,
                      ),
                    ),
                    child: Container(
                      width: SizeConfig.screenwidth * .3,
                      height: SizeConfig.screenheight * .15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(
                          color: const Color.fromRGBO(85, 185, 213, 1),
                        ),
                      ),
                      child: Icon(
                        Icons.heart_broken,
                        size: SizeConfig.sizeMultiplier * 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .025,
                ),
                Text(
                  "Your Daily Steps",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.textMultiplier * 5,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "367",
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.textMultiplier * 4,
                            fontWeight: FontWeight.bold,
                          ),
                          text: "Distance ",
                          children: <InlineSpan>[
                            TextSpan(
                                text: "0.56 Km",
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 4,
                                    color:
                                        const Color.fromRGBO(87, 180, 216, 1)))
                          ]),
                    ),
                    SizedBox(
                      width: SizeConfig.screenwidth * .05,
                    ),
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.textMultiplier * 4,
                              fontWeight: FontWeight.bold),
                          text: "Calories ",
                          children: <InlineSpan>[
                            TextSpan(
                                text: "20 Kcal",
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 4,
                                    color:
                                        const Color.fromRGBO(87, 180, 216, 1)))
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .025,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenwidth * .05),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 242, 240, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(95, 174, 220, 1),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.screenheight * .02,
                              left: SizeConfig.screenwidth * .01,
                              bottom: SizeConfig.screenheight * .01,
                              right: 0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const DailySteps())));
                                },
                                child: Container(
                                  width: SizeConfig.screenwidth * .18,
                                  height: SizeConfig.screenwidth * .18,
                                  decoration: BoxDecoration(
                                    // color: Colors.black,
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(86, 182, 220, 1),
                                        Color.fromRGBO(52, 204, 201, 1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.snowshoeing_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Steps",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "368",
                                    style: TextStyle(
                                        color: Color.fromRGBO(86, 182, 220, 1),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 12),
                              // Spacer(flex: 4,),

                              InkWell(
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(
                                  //     MaterialPageRoute(
                                  //         builder: ((context) =>
                                  //             const HeratBeat())));
                                },
                                child: Container(
                                  width: SizeConfig.screenwidth * .18,
                                  height: SizeConfig.screenwidth * .18,
                                  decoration: BoxDecoration(
                                    // color: Colors.black,
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(86, 182, 220, 1),
                                        Color.fromRGBO(52, 204, 201, 1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.heart_broken,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Heart",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "77",
                                    style: TextStyle(
                                        color: Color.fromRGBO(86, 182, 220, 1),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.screenheight * .02,
                              left: SizeConfig.screenwidth * .01,
                              bottom: SizeConfig.screenheight * .01,
                              right: 0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(
                                  //     MaterialPageRoute(
                                  //         builder: ((context) =>
                                  //             SleepScore())));
                                },
                                child: Container(
                                  width: SizeConfig.screenwidth * .18,
                                  height: SizeConfig.screenwidth * .18,
                                  decoration: BoxDecoration(
                                    // color: Colors.black,
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(86, 182, 220, 1),
                                        Color.fromRGBO(52, 204, 201, 1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.snowshoeing_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sleep",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Color.fromRGBO(86, 182, 220, 1),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              // Spacer(flex: 1,),

                              InkWell(
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(
                                  //     MaterialPageRoute(
                                  //         builder: ((context) => WorkOut())));
                                },
                                child: Container(
                                  width: SizeConfig.screenwidth * .18,
                                  height: SizeConfig.screenwidth * .18,
                                  decoration: BoxDecoration(
                                    // color: Colors.black,
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(86, 182, 220, 1),
                                        Color.fromRGBO(52, 204, 201, 1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.heart_broken,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Workout",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Color.fromRGBO(86, 182, 220, 1),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
