import 'package:flutter/material.dart';
import 'package:example/Screens/Mainscreen/widget/courses_show.dart';
import 'package:example/Screens/Mainscreen/widget/stories.dart';
import 'package:example/Screens/Mainscreen/widget/topics.dart';

class MainPageContent extends StatefulWidget {
  @override
  State<MainPageContent> createState() => _MainPageContentState();
}

class _MainPageContentState extends State<MainPageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(top: 20, right: 1, left: 12),
        children: [
          SizedBox(
            height: 15,
          ),
          StoriesWidget(),
          SizedBox(
            height: 10,
          ),
          TopicsWidget(),
          CoursesShow(),
        ],
      ),
    );
  }
}
