import 'package:flutter/material.dart';

class ActiveState extends StatelessWidget {
  final String imagurl;
  final bool isActive;
  const ActiveState({required this.imagurl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:18),
          child: Image.asset(
            imagurl,
            fit: BoxFit.cover,
            width: 45,
            height: 45,
          ),
        ),
        if (isActive)
          Positioned(
            left: 34,
            top: 34,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.white, width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
      ],
    );
  }
}
