import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rock_paper_scissors/Game%20Engine/rps_engine.dart';
import 'package:rock_paper_scissors/Reusables/constants.dart';
import 'package:rock_paper_scissors/Screens/results-page.dart';

import '../Reusables/Widgets/rsl-widget.dart';
import 'rules-screen.dart';

class RockPaperScissors extends StatelessWidget {
  const RockPaperScissors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<RPSEngine>(context);
    final provider = Provider.of<RPSEngine>(context, listen: false);

    void optionPressed(String option) {
      provider.playRPS(option);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResultsPage(
                  provider.getUserChoiceWidgetRPS(),
                  provider.getComputerChoiceWidgetRPS(),
                  provider.getRPSResultString(),
                  rockPaperScissors)));
    }

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
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.all(7.0.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              rockPaperScissors,
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    color: const Color(0xfff6f6f6),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0.r),
                                      child: Column(
                                        children: [
                                          const Text(
                                            'You',
                                            style: TextStyle(
                                                color: Color(0xff8991b9)),
                                          ),
                                          Text(
                                            providerListen.userScore.toString(),
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
                                    color: const Color(0xfff6f6f6),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0.r),
                                      child: Column(
                                        children: [
                                          const Text(
                                            'House',
                                            style: const TextStyle(
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
                      RPSOptionWidget(
                          paper, 'Paper', paperColor, optionPressed),
                      addHorizontalSpacing(40),
                      RPSOptionWidget(
                          scissors, 'Scissors', scissorsColor, optionPressed),
                    ],
                  ),
                  addVerticalSpacing(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RPSOptionWidget(rock, 'Rock', rockColor, optionPressed),
                    ],
                  )
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
                      builder: (BuildContext context) => const showRulesScreen(
                          'assets/images/image-rules.png'));
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
                            const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xff1e3555),
                        border: Border.all(color: const Color(0xff5d6d88))),
                    height: 40,
                    width: 150,
                    child: const Center(
                        child: const Text(
                      'Quit Game Mode',
                      style: const TextStyle(
                          fontSize: 15,
                          color: const Color(0xffe4eaf1),
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
