import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../Game Engine/rps_engine.dart';
import '../Reusables/constants.dart';

class ResultsPage extends StatelessWidget {
  final Widget userChoice;
  final Widget computerChoice;
  final String result;
  final Widget svgImage;

  ResultsPage(this.userChoice, this.computerChoice, this.result, this.svgImage);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RPSEngine>(context, listen: false);
    final providerListen = Provider.of<RPSEngine>(context);
    return Scaffold(
      backgroundColor: Color(0xff1a2447),
      body: Center(
        child: Column(
          children: [
            Column(
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
                                svgImage,
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      color: Color(0xfff6f6f6),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0.r),
                                        child: Column(
                                          children: [
                                            Text(
                                              'You',
                                              style: TextStyle(
                                                  color: Color(0xff8991b9)),
                                            ),
                                            Text(
                                              providerListen.userScore
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    addHorizontalSpacing(10),
                                    Container(
                                      width: 60,
                                      color: Color(0xfff6f6f6),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0.r),
                                        child: Column(
                                          children: [
                                            Text(
                                              'House',
                                              style: TextStyle(
                                                  color: Color(0xff8991b9)),
                                            ),
                                            Text(
                                              providerListen.computerScore
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
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
                        Column(
                          children: [
                            userChoice,
                            addVerticalSpacing(20),
                            Text('You Picked',
                                style: TextStyle(
                                    color: Color(0xff8991b9), fontSize: 15.sp)),
                          ],
                        ),
                        addHorizontalSpacing(40),
                        Column(
                          children: [
                            computerChoice,
                            addVerticalSpacing(20),
                            Text('House Picked',
                                style: TextStyle(
                                    color: Color(0xff8991b9), fontSize: 15.sp)),
                          ],
                        ),
                      ],
                    ),
                    addVerticalSpacing(30),
                  ],
                ),
              ],
            ),
            addVerticalSpacing(50),
            Text(
              result,
              style: TextStyle(
                  color: Color(0xff8991b9),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900),
            ),
            addVerticalSpacing(50),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Play Again',
                  style: TextStyle(fontSize: 20.sp),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e3555),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            addVerticalSpacing(20),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  provider.resetGame();
                  Navigator.pop(context);
                },
                child: Text(
                  'Reset Game',
                  style: TextStyle(fontSize: 20.sp),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff1e3555),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
