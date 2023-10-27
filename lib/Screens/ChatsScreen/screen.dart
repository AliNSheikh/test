import 'package:flutter/material.dart';
import 'package:example/Core/Widgets/enlargbleiconbutton.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Screens/ChatsScreen/widghet/Searchpress.dart';
import 'package:example/Screens/ChatsScreen/widghet/chatcard.dart';
import 'package:example/Screens/Mainscreen/widget/header.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Header(
                        imagUrl: "images/header1.png",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Messages",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "2 new messages",
                            style: TextStyle(color: Colors.grey.shade500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    EnlargeableIconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 35,
                        ),
                        scaleFactor: 1.5),
                    Positioned(
                        left: 30,
                        top: 11,
                        child: Container(
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                              color: forange,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white)),
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search here",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
                Positioned(left: 325, top: 10, child: SearchPress()),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(child: ChatCard()),
          ],
        ),
      ),
    ));
  }
}
