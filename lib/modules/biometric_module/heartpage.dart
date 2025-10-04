import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:wellbeings/utilities/size_config.dart';

class HeratBeat extends StatelessWidget {
  const HeratBeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Color.fromRGBO(235, 249, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Health",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          RippleAnimation(
            color: Colors.black12,
            delay: const Duration(milliseconds: 300),
            repeat: true,
            minRadius: 20,
            ripplesCount: 1,
            duration: const Duration(milliseconds: 10 * 300),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150),
                border: Border.all(
                  color: const Color.fromRGBO(98, 182, 219, 1),
                  width: 40,
                ),
              ),
              child: Container(
                width: SizeConfig.screenwidth * .26,
                height: SizeConfig.screenheight * .15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(
                    color: const Color.fromRGBO(5, 170, 241, 1),
                  ),
                ),
                child: Icon(
                  Icons.heart_broken,
                  size: SizeConfig.sizeMultiplier * 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Your Heart Beat",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Text(
            "90",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const Text(
            "24-Hour Average Heart Rate 69 BPM",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              left: 30,
              right: 30,
              bottom: 0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(240, 242, 240, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromRGBO(95, 174, 220, 1),
                  width: 2,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 0, bottom: 15, right: 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.of(context).pushReplacement(
                                //     MaterialPageRoute(
                                //         builder: ((context) =>
                                //             DailySteps())));
                              },
                              child: Container(
                                width: 80,
                                height: 80,
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
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const HeratBeat())));
                              },
                              child: Container(
                                width: 80,
                                height: 80,
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
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: ((context) =>
                              //             SleepScore())));
                            },
                            child: Container(
                              width: 80,
                              height: 80,
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
                              width: 80,
                              height: 80,
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
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
