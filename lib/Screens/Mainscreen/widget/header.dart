import 'package:flutter/material.dart';

class Headerr extends StatelessWidget {
  const Headerr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 18,
            ),
            Stack(
              children: [
                Image.asset(
                  "images/LaurelProfilePic.png",
                  fit: BoxFit.cover,
                  width: 60,
                  height: 55,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final String imagUrl;
  const Header({required this.imagUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagUrl,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        Positioned(
          left: 38,
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
