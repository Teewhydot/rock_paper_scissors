import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rock_paper_scissors/Game%20Engine/rps_engine.dart';
import 'package:rock_paper_scissors/constants.dart';
import 'package:rock_paper_scissors/results-page.dart';

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
                  provider.getRPSResultString())));
    }

    return Scaffold(
      backgroundColor: Color(0xff1a2447),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              rockPaperScissors,
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
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xff1e3555),
                      border: Border.all(color: Color(0xff5d6d88))),
                  height: 40,
                  width: 80,
                  child: Center(
                      child: Text(
                    'Rules',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffe4eaf1),
                        fontWeight: FontWeight.w900),
                  )),
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff1e3555),
                        border: Border.all(color: Color(0xff5d6d88))),
                    height: 40,
                    width: 150,
                    child: Center(
                        child: Text(
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

class RPSOptionWidget extends StatelessWidget {
  final Widget option;
  final text;
  final color;
  final Function onTap;

  RPSOptionWidget(this.option, this.text, this.color, this.onTap);

  void onTapped() {
    print('tapped');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(text),
      child: CircleAvatar(
          radius: 50,
          backgroundColor: color,
          child: Padding(
            padding: EdgeInsets.all(5.0.r),
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: option,
                )),
          )),
    );
  }
}
