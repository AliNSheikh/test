import 'package:flutter/material.dart';

class CircleMassegeCount extends StatelessWidget {
  final int nummassege;
  final bool m;
  const CircleMassegeCount({required this.nummassege, required this.m});

  @override
  Widget build(BuildContext context) {
    if (m == true) {
      return Container(
        padding: EdgeInsets.all(4),
        width: 27,
        height: 27,
        decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
            child: Text(
          "${nummassege}",
          style: TextStyle(color: Colors.white),
        )),
      );
    } else {
      return Text("");
    }
  }
}
