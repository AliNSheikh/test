import 'package:flutter/material.dart';
import 'package:example/Screens/Mainscreen/widget/custom_container.dart';

class TopicsWidget extends StatelessWidget {
  const TopicsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              CustomContainer(
                  horizenta: 20,
                  vertical: 15,
                  ContainerColor: Color.fromRGBO(255, 133, 0, 1),
                  TextColor: Colors.white,
                  title: "All"),
              SizedBox(
                width: 15,
              ),
              CustomContainer(
                  horizenta: 10,
                  vertical: 15,
                  ContainerColor: Colors.grey.shade200,
                  TextColor: Colors.grey.shade500,
                  title: "UI/UX"),
              SizedBox(
                width: 15,
              ),
              CustomContainer(
                  horizenta: 20,
                  vertical: 15,
                  ContainerColor: Colors.grey.shade200,
                  TextColor: Colors.grey.shade500,
                  title: "Illustration"),
              SizedBox(
                width: 15,
              ),
              CustomContainer(
                horizenta: 20,
                vertical: 15,
                ContainerColor: Colors.grey.shade200,
                TextColor: Colors.grey.shade500,
                title: "3D Animation",
              ),
            ],
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
