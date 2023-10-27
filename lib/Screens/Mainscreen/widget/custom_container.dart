import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color ContainerColor;
  final String title;
  final Color TextColor;
  final double horizenta;
  final double vertical;

  const CustomContainer({
    required this.ContainerColor,
    required this.TextColor,
    required this.title,
    required this.horizenta,
    required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ContainerColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizenta, vertical: vertical),
        child: Text(
          title,
          style: TextStyle(
              color: TextColor, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
