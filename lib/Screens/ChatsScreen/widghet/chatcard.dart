import 'package:flutter/material.dart';
import 'package:example/Screens/ChatsScreen/Repostry/Repo.dart';
import 'package:example/Screens/ChatsScreen/widghet/ActiveState.dart';
import 'package:example/Screens/ChatsScreen/widghet/circlemassegecount.dart';

import '../Repostry/model.dart';

// ignore: must_be_immutable
class ChatCard extends StatelessWidget {
  List<Model> data = Repo().data;

  ChatCard({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, i) {
        final datamodel = data[i];
        return Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          children: [
                            ActiveState(
                              imagurl: datamodel.imagurl,
                              isActive: datamodel.isActive,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  datamodel.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  datamodel.Description,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 290,
                    top: 18,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              datamodel.date,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            Icon(
                              Icons.arrow_back_ios_new,
                              size: 18,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 355,
                    top: 55,
                    child: CircleMassegeCount(
                      nummassege: datamodel.nummassege,
                      m: datamodel.Circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.grey[300],
              ),
            ],
          ),
        );
      },
    );
  }
}
