import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rock_paper_scissors/Reusables/Widgets/rsl-widget.dart';
import 'package:rock_paper_scissors/Reusables/constants.dart';

import '../Game Engine/rps_engine.dart';
import 'results-page.dart';
import 'rules-screen.dart';

class RockPaperScissorsLizardSpock extends StatelessWidget {
  const RockPaperScissorsLizardSpock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RPSEngine>(context, listen: false);

    void optionPressed(String option) {
      provider.playRPSLS(option);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResultsPage(
                  provider.getUserChoiceWidgetRPSLS(),
                  provider.getComputerChoiceWidgetRPSLS(),
                  provider.getRPSLSResultString(),
                  rockPaperScissorsLizardSpock)));
    }

    final providerListen = Provider.of<RPSEngine>(context);
    return Scaffold(
      backgroundColor: const Color(0xff1a2447),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              addVerticalSpacing(70),
              Container(
                margin: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff1e3555),
                            border: Border.all(color: const Color(0xff5d6d88))),
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.all(7.0.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              rockPaperScissorsLizardSpock,
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    color: const Color(0xfff6f6f6),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0.r),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'You',
                                            style: TextStyle(
                                                color: const Color(0xff8991b9)),
                                          ),
                                          Text(
                                            providerListen.userScore.toString(),
                                            style: TextStyle(
                                                fontSize: 25.sp,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  addHorizontalSpacing(10),
                                  Container(
                                    width: 70,
                                    color: const Color(0xfff6f6f6),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0.r),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'House',
                                            style: TextStyle(
                                                color: Color(0xff8991b9)),
                                          ),
                                          Text(
                                            providerListen.computerScore
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 25.sp,
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
                      RPSOptionWidget(
                          scissors, 'Scissors', scissorsColor, optionPressed),
                    ],
                  ),
                  addVerticalSpacing(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RPSOptionWidget(
                          spock, 'Spock', spockColor, optionPressed),
                      addHorizontalSpacing(120),
                      RPSOptionWidget(
                          paper, 'Paper', paperColor, optionPressed),
                    ],
                  ),
                  addVerticalSpacing(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RPSOptionWidget(
                          lizard, "Lizard", lizardColor, optionPressed),
                      addHorizontalSpacing(30),
                      RPSOptionWidget(rock, 'Rock', rockColor, optionPressed),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => showRulesScreen(
                          'assets/images/image-rules-bonus.png'));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff1e3555),
                        border: Border.all(color: const Color(0xff5d6d88))),
                    height: 40,
                    width: 80,
                    child: const Center(
                        child: const Text(
                      'Rules',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffe4eaf1),
                          fontWeight: FontWeight.w900),
                    )),
                  ),
                ),
              ),
              addHorizontalSpacing(20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(10)),
                        color: const Color(0xff1e3555),
                        border: Border.all(color: const Color(0xff5d6d88))),
                    height: 40,
                    width: 150,
                    child: const Center(
                        child: const Text(
                      'Quit Game Mode',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffe4eaf1),
                          fontWeight: FontWeight.w900),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
