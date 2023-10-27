import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                child: Image.asset(
                                  "images/Avatar 1717.png",
                                ),
                              ),
                              SvgPicture.asset(
                                "images/Name.svg",
                              ),
                              SizedBox(
                                width: 195,
                              ),
                              SvgPicture.asset(
                                "images/notificationsP.svg",
                                height: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 105,
                width: 485,
                child: ListView(
                  padding: EdgeInsets.only(right: 20, left: 0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset("images/Avatar Live.png"),
                    Image.asset("images/liveavater1.png"),
                    Image.asset("images/liveavater2.png"),
                    Image.asset("images/liveavater3.png"),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Upcoming",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    " course of the week",
                    style: TextStyle(fontSize: 23),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
