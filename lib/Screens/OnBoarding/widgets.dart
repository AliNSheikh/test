import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Core/Widgets/my_button.dart';

import 'package:example/Screens/logIn/login.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 70,
          child: SvgPicture.asset(
            logo,
          ),
        ),
        SvgPicture.asset(
          'images/community.svg',
        ),
        const SizedBox(
          height: 190,
        ),
        const Text(
          'Welcome to our Community',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
Center(
  child: Text.rich(
    TextSpan(
      text: 'Best and popular apps for live education\n',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.grey[600],
        fontSize: 17,
      ),
      children: [
        TextSpan(
          text: 'courses from home',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
            fontSize: 17,
          ),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  ),
),

        const SizedBox(
          height: 40,
        ),
        MyButton(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LogInPage()),
            );
          },
          text: 'Get started',
          color: forange,
        ),
      ],
    );
  }
}
