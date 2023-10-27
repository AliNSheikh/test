import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color color;
  final Widget? icon;
  final TextStyle? textStyle;

  MyButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.color,
    this.icon,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9),
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Row(
                children: [
                  icon!,
                  SizedBox(width: 15),
                ],
              ),
            Text(
              text,
              style: textStyle ??
                  TextStyle(
                    fontSize: 16,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
