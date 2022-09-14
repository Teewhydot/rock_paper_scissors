import 'package:flutter/material.dart';

class showRulesScreen extends StatelessWidget {
  final String svgImage;

  const showRulesScreen(this.svgImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color(0xff757575),
          child: Container(
            width: 500,
            height: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xff1a2447),
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(svgImage))),
          )),
    );
  }
}
