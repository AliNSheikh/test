import 'package:flutter/material.dart';
import 'custom_container.dart';

class CustomCourse extends StatelessWidget {
  const CustomCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 1, left: 0),
          padding: EdgeInsets.only(right: 1),
          child: Stack(
            children: [
              Image.asset(
                "images/Base Background.png",
                fit: BoxFit.contain,
                height: 460,
              ),
              Positioned(
                  left: 30,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(8),
                    child: (Text(
                      "Free e-book",
                      style: TextStyle(color: Colors.white),
                    )),
                  )),
              Positioned(
                  left: 15,
                  top: 240,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (Text(
                          "Step design sprint for \nbeginner",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset("images/stopwatch.png"),
                            Text(
                              "    5h 21m",
                              style: TextStyle(color: Colors.grey.shade700),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            CustomContainer(
                              ContainerColor: Colors.cyanAccent,
                              TextColor: Colors.white,
                              title: "6 Lessons",
                              horizenta: 6,
                              vertical: 2,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CustomContainer(
                                ContainerColor: Colors.blue,
                                TextColor: Colors.white,
                                title: "UI/UX",
                                horizenta: 6,
                                vertical: 2),
                            SizedBox(
                              width: 8,
                            ),
                            CustomContainer(
                                ContainerColor: Colors.deepPurpleAccent,
                                TextColor: Colors.white,
                                title: "Free",
                                horizenta: 6,
                                vertical: 2)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset("images/Avatar 2.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Laurel Seilha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "  Product Designer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 90),
          child: Stack(
            children: [
              Image.asset(
                "images/Course 2.png",
                fit: BoxFit.contain,
                height: 350,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
