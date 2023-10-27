import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:example/Screens/Mainscreen/widget/custom_course.dart';
import 'package:example/Screens/Details%20course/screen.dart';

class CoursesShow extends StatelessWidget {
  const CoursesShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 460,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  PersistentNavBarNavigator.pushNewScreen(
                                    context,
                                    screen: DetailsScreen(),
                                    withNavBar: false,
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                },
                                child: CustomCourse()),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 50,
                                left: 0,
                              ),
                              
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          'images/Slider.svg',
          height: 7,
        )
      ],
    );
  }
}
