import 'package:flutter/material.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "images/stopwatch.png",
          height: 20,
        ),
        Text(
          "    5h 21m",
          style:
              TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
