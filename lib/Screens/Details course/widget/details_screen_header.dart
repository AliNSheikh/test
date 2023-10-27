import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:example/Screens/Mainscreen/main_screen.dart';

class DetailsScreenHeader extends StatelessWidget {
  const DetailsScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SafeArea(
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 45,
              width: 45,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPageContent()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.orange,
                  size: 20,
                ),
              ),
            ),
          ),
          title: Text(
            "Detail course",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
              fontSize: 19,
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              height: 55,
              width: 55,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('images/notifications.svg', height: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
