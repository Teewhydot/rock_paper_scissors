import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RPSOptionWidget extends StatelessWidget {
  final Widget option;
  final text;
  final color;
  final Function onTap;

  RPSOptionWidget(this.option, this.text, this.color, this.onTap);

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
