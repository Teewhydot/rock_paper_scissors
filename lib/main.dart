import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rock_paper_scissors/Game%20Engine/rps_engine.dart';
import 'package:rock_paper_scissors/home_screen.dart';

void main() {
  runApp(MultiProvider(
    builder: (context, _) {
      return const MyApp();
    },
    providers: [
      ChangeNotifierProvider(create: (context) => RPSEngine()),
    ],
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 679),
      builder: (context, _) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GameHome(),
        );
      },
    );
  }
}
