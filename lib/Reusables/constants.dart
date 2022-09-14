import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Color paperColor = const Color(0xff516cf4);

const Color rockColor = const Color(0xffdf405d);

const Color scissorsColor = const Color(0xffeca319);

const Color lizardColor = const Color(0xff8c5ce4);

const Color spockColor = const Color(0xff40b9cc);

Widget addVerticalSpacing(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(
    width: width.w,
  );
}

const String rps = 'assets/images/logo.svg';
final Widget rockPaperScissors = SvgPicture.asset(
  rps,
);

final Widget rockPaperScissorsLizardSpock = SvgPicture.asset(
  'assets/images/logo-bonus.svg',
);

final Widget paper = SvgPicture.asset(
  'assets/images/icon-paper.svg',
);

final Widget rock = SvgPicture.asset(
  'assets/images/icon-rock.svg',
);

final Widget scissors = SvgPicture.asset(
  'assets/images/icon-scissors.svg',
);

final Widget lizard = SvgPicture.asset(
  'assets/images/icon-lizard.svg',
);

final Widget spock = SvgPicture.asset(
  'assets/images/icon-spock.svg',
);

final Widget rulesRPS = SvgPicture.asset(
  'assets/images/image-rules.svg',
);

final Widget rulesRPSLS = SvgPicture.asset(
  'assets/images/image-rules-bonus.svg',
);
