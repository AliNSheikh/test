import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Core/Widgets/form.dart';
import 'package:example/Core/Widgets/my_button.dart';


class DatesPicker extends StatelessWidget {
  const DatesPicker({
    super.key,
    required this.isContainerEnabled,
  });

  final bool isContainerEnabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 180),
      child: Visibility(
        visible: isContainerEnabled,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 700,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 25),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Available time",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 23),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "  Adjust to your schedule",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset('images/CTA Small_Icon.svg'),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: SvgPicture.asset(
                      'images/Select Time.svg',
                      height: 190,
                      width: 500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                        ],
                      ),
                      TextForm(
                        onTap: null,
                        text: 'samuel_herickson@gmail.com',
                        textStyle: TextStyle(color: Colors.grey[400]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        "Telp number",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ],
                  ),
                  TextForm(
                    onTap: null,
                    text: '(001) 34 4567890',
                    textStyle: TextStyle(color: Colors.grey[400]),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            "Schedule date & time",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      SvgPicture.asset('images/check-box.svg'),
                      Text('12 October, 2020 at 09:45 AM')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(onTap: null, text: 'Apply', color: forange)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
