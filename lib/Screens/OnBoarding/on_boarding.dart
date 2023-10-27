import 'package:flutter/material.dart';
import 'package:example/Screens/OnBoarding/widgets.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return
     const Scaffold(
      body: Center(
        child: OnBoardingWidget(),
      ),
    );
  }
}
