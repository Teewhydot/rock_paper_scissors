import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/Reusables/constants.dart';
import 'package:rock_paper_scissors/Screens/rock-paper-scissors-lizard-spock.dart';
import 'package:rock_paper_scissors/Screens/rock-paper-scissors.dart';

class GameHome extends StatelessWidget {
  const GameHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1a2447),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Center(
            child: Text(
          "Choose Your Breakfast",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
        )),
        addVerticalSpacing(120),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RockPaperScissors()));
          },
          child: Container(
            height: 50,
            child: rockPaperScissors,
            width: 100,
          ),
        ),
        addVerticalSpacing(40),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RockPaperScissorsLizardSpock()));
          },
          child: Container(
            height: 80,
            child: rockPaperScissorsLizardSpock,
            width: 100,
          ),
        ),
        addVerticalSpacing(20),
      ],
    );
  }
}
