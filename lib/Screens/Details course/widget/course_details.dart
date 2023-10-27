import 'package:flutter/material.dart';
import 'package:example/Screens/Mainscreen/widget/custom_container.dart';
import 'package:example/Screens/Mainscreen/widget/header.dart';
import 'package:example/Screens/Details%20course/widget/stopwatch.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 110,
          ),
          Image.asset("images/newvidiobox.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Step Design spirnt for\nbeginner",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CustomContainer(
                  ContainerColor: Colors.cyanAccent,
                  TextColor: Colors.white,
                  title: "6 Lessons",
                  horizenta: 8,
                  vertical: 3),
              SizedBox(
                width: 10,
              ),
              CustomContainer(
                  ContainerColor: Colors.blueAccent,
                  TextColor: Colors.white,
                  title: "Design",
                  horizenta: 8,
                  vertical: 3),
              SizedBox(
                width: 10,
              ),
              CustomContainer(
                  ContainerColor: Colors.deepPurple,
                  TextColor: Colors.white,
                  title: "Free",
                  horizenta: 9,
                  vertical: 3)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "In This Course , I will show the step by step,day by\nday process to build better products,just as\nGoogle,Slack,KLM and manu other do",
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: Row(
              children: [
                Headerr(),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Laurel Seliha ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Product Designer",
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 12),
                    ),
                  ],
                ),
              ],
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                StopWatch(),
                SizedBox(
                  height: 10,
                ),
                CustomContainer(
                    ContainerColor: Colors.orangeAccent.shade100,
                    TextColor: Colors.white,
                    title: "Free e-book",
                    horizenta: 9,
                    vertical: 2)
              ],
            ),
          ]),
          SizedBox(
            height: 14,
          ),
          Image.asset("images/Detail Course.png"),
        ],
      ),
    );
  }
}
