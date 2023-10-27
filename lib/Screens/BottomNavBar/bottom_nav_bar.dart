import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Screens/ChatsScreen/screen.dart';
import 'package:example/Screens/Discover/discover_screen.dart';
import 'package:example/Screens/Mainscreen/main_screen.dart';
import 'package:example/Screens/MyProfile/my_profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _MainPageState();
}

class _MainPageState extends State<BottomNav> {
  Color mainColor = forange;
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersistentTabView(
        context,
        controller: _controller,
        screens: [
          MainPageContent(),
          const DiscoverMain(),
          const Chats(),
          const MyProfileScreen(),
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style12,
        bottomScreenMargin: 1,
        hideNavigationBarWhenKeyboardShows: true,
        confineInSafeArea: true,
        navBarHeight: 70,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 40,
          width: 35,
          child: SvgPicture.asset(
            'images/Active11.svg',
            fit: BoxFit.cover,
          ),
        ),
        activeColorPrimary: forange,
        inactiveIcon: SizedBox(
          height: 122,
          width: 120,
          child: SvgPicture.asset(
            'images/icon1.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      //2
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 122,
          width: 120,
          child: SvgPicture.asset(
            'images/icon2.svg',
            fit: BoxFit.cover,
          ),
        ),
        activeColorPrimary: forange,
        inactiveIcon: SizedBox(
          height: 142,
          width: 140,
          child: SvgPicture.asset(
            'images/icon2.svg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      //3
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 45,
          width: 35,
          child: SvgPicture.asset(
            'images/Active12.svg',
            fit: BoxFit.cover,
          ),
        ),
        activeColorPrimary: forange,
        inactiveIcon: SizedBox(
          height: 122,
          width: 120,
          child: SvgPicture.asset(
            'images/icon3.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      //4
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 122,
          width: 120,
          child: SvgPicture.asset(
            'images/icon4.svg',
            fit: BoxFit.cover,
          ),
        ),
        activeColorPrimary: forange,
        inactiveIcon: SizedBox(
          height: 122,
          width: 120,
          child: SvgPicture.asset(
            'images/icon4.svg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    ];
  }
}
