import 'package:animated_splash/animated_splash.dart';
import 'package:bmi_calculator_app/utils/bmi_store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:bmi_calculator_app/screens/input_page.dart';


void main() => runApp(VxState(
    store: BMIStore(),
    interceptors: [LogInterceptor()],
    child: BMICalculator()));



class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  AnimatedSplash(
        imagePath: 'assets/images/icon.png',
        home: InputPage(),
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
      ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF59098B),
      ),
    );
  }
}