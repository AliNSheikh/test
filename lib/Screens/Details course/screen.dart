import 'package:flutter/material.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Core/Widgets/my_button.dart';
import 'package:example/Screens/Details%20course/widget/course_details.dart';
import 'package:example/Screens/Details%20course/widget/dates_picker.dart';
import 'package:example/Screens/Details%20course/widget/details_screen_header.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isContainerEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const DetailsScreenHeader(),
            const CourseDetails(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: MyButton(
                  onTap: () {
                    setState(() {
                      isContainerEnabled = true;
                    });
                  },
                  text: 'Follow class',
                  color: forange,
                ),
              ),
            ),
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height * 0.70,
              child: Visibility(
                visible: isContainerEnabled,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            DatesPicker(isContainerEnabled: isContainerEnabled)
          ],
        ),
      ),
    );
  }
}
