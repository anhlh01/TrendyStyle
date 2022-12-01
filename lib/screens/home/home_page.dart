import 'package:flutter/material.dart';
import 'package:trendy_style/screens/cart/cart.dart';
import 'package:trendy_style/screens/home/main_home_page.dart';
import 'package:trendy_style/screens/profile/profile.dart';
import 'package:trendy_style/utilities/colors.dart';

import '../../icons/my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const MainHomePage(),
    const Cart(),
    const MainHomePage(),
    const MainHomePage(),
    const Profile(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex], bottomNavigationBar: bottomNavigationBar);
  }

  Widget get bottomNavigationBar {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18.0), topLeft: Radius.circular(18.0)),
          // boxShadow: [
          //   BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
          // ],
          border: Border.all(width: .2, color: AppColors.primaryText),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          child: BottomNavigationBar(
              landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
              type: BottomNavigationBarType.fixed,
              onTap: onTap,
              currentIndex: currentIndex,
              selectedItemColor: AppColors.mainColor,
              unselectedItemColor: AppColors.primaryText,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(MyFlutterApp.home), label: "HOME"),
                BottomNavigationBarItem(
                    icon: Icon(MyFlutterApp.cart), label: "CART"),
                BottomNavigationBarItem(
                    icon: Icon(MyFlutterApp.camera, size: 35), label: "TRY ON"),
                BottomNavigationBarItem(
                    icon: Icon(MyFlutterApp.bag), label: "CLOSET"),
                BottomNavigationBarItem(
                    icon: Icon(MyFlutterApp.profile), label: "PROFILE"),
              ]),
        ));
  }
}
