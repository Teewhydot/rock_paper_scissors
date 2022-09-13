import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rock_paper_scissors/constants.dart';

class RockPaperScissors extends StatelessWidget {
  const RockPaperScissors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a2447),
      body: Column(
        children: [
          addVerticalSpacing(70),
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1e3555),
                        border: Border.all(color: Color(0xff5d6d88))),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(7.0.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          rockPaperScissors,
                          Container(
                            color: Color(0xfff6f6f6),
                            child: Padding(
                              padding: EdgeInsets.all(5.0.r),
                              child: Column(
                                children: [
                                  Text(
                                    'Score',
                                    style: TextStyle(color: Color(0xff8991b9)),
                                  ),
                                  Text(
                                    '12',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          addVerticalSpacing(50),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                      backgroundColor: Color(0xff516cf4), child: Padding(
                        padding: EdgeInsets.all(5.0.r),
                        child: CircleAvatar(
                          radius: 40,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: paper,
                            )),
                      )),
                  addHorizontalSpacing(20),
                  scissors
                ],
              ),
              addVerticalSpacing(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [rock],
              )
            ],
          )
        ],
      ),
    );
  }
}
